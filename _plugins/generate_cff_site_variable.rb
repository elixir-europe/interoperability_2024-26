Jekyll::Hooks.register :site, :post_read do |site|

  def expand_liquid_variables!(target_hash, keys, variables_hash)
    keys.each do |key|
      if target_hash.key?(key)
        value = target_hash[key]
        new_value = Liquid::Template.parse(value).render(variables_hash)
        if value != new_value
          Jekyll.logger.info(value + " ==> " + new_value)
          target_hash[key] = new_value
        end
      end
    end
  end

  def menu_mapping!(item, variables_hash)
    expand_liquid_variables!(item, ['title', 'url'], variables_hash)
    if item.key?("subitems") and item['subitems'].is_a?(Array)
      item['subitems'].each { |subitem| menu_mapping!(subitem, variables_hash) }
    end
  end

  cff_elements = {}

  site.pages.each do |page|
    if page.data['cff_properties'].is_a?(Hash)
      key = page.data['cff_properties']["id"]
      if !cff_elements.key?(key)
        cff_elements[key] = page.data['cff_properties']
        cff_elements[key]['excerpt'] = page.excerpt
        cff_elements[key]['page_url'] = page.url
      else
        raise "Duplicate CFF key “#{key}”"
      end
      ['elixirstories','fairmetroline','faircookbook','rdmkit'].each do |cat_id|
        page.data[cat_id] ||= []
        data = site.data['library-interop-stories'][cat_id]['data'].to_h { |e| [e['id'], {'name': e['title'], 'url': e['url']}] }
        mappings = site.data['library-interop-stories'][cat_id]['mappings']
        mappings.select{ |i| i['cff_id']==key}.each{ |i| page.data[cat_id] << data[i['id']] }
      end
    end
    if page.data['cff_elements'].is_a?(Hash)
      page.data['cff_elements'].each do |key, value|
        if !cff_elements.key?(key)
          cff_elements[key] = value
          cff_elements[key]['excerpt'] = page.excerpt
          cff_elements[key]['page_url'] = page.url
        else
          raise "Duplicate CFF key “#{key}”"
        end
      end
    end
  end

  cff_elements.select{ |id, e| e['type'] == 'process_phase' }.each do |phase_id, phase|
    phase['outputs'] ||= []
    phase['inputs'] ||= []

    phase['outputs'].each do |output|
      # output.update(cff_elements[output['id']].merge(output))
      cff_elements[output['id']]['output_of'] ||= []
      cff_elements[output['id']]['output_of'] = phase_id
    end
    phase['inputs'].each do |input|
      # input.update(cff_elements[input['id']].merge(input))
      cff_elements[input['id']]['input_of'] ||= []
      cff_elements[input['id']]['input_of'].append(phase_id)
    end
  end

  cff_elements.select{ |id, e| e['type'] == 'process_phase' }.each do |phase_id, phase|
    phase['pre_phases'] = phase['inputs'].flat_map{ |e| cff_elements[e['id']]['output_of'] || [] }
    phase['post_phases'] = phase['outputs'].flat_map{ |e| cff_elements[e['id']]['input_of'] || [] }
  end

  site.pages.each do |page|
    if page.data['cff_properties'].is_a?(Hash)
      site.regenerator.add_dependency(page.path, cff_elements)
      site.regenerator.add_dependency(page.path, site.data["library-interop-stories"])
      site.regenerator.add_dependency(page.path, site.data["sidebars"]["framework"])
      expand_liquid_variables!(page.data, ['title'], page.data['cff_properties'])
    end
  end

  
  #site.regenerator.add_dependency("_includes/cff-phase.md.liquid", cff_elements)
  #site.regenerator.regenerate?("pages/framework/phase_2.md")

  site.config['cff'] = cff_elements

  menu_mapping!(site.data['sidebars']['main'], {'site' => site.config})

  Jekyll.logger.info "CFF Site Variable Hook:", "Injected #{ cff_elements.length } CFF items from #{ site.pages.length } pages."
end


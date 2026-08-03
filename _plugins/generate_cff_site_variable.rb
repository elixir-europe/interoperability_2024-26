Jekyll::Hooks.register :site, :post_read do |site|
  cff_elements = {}

  site.pages.each do |page|
    if page.data['cff_properties'].is_a?(Hash)
      key = page.data['cff_properties']["id"]
      if !cff_elements.key?(key)
        cff_elements[key] = page.data['cff_properties']
      else
        raise "Duplicate CFF key “#{key}”"
      end
    end
    if page.data['cff_elements'].is_a?(Hash)
      page.data['cff_elements'].each do |key, value|
        if !cff_elements.key?(key)
          cff_elements[key] = value
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
      cff_elements[output['id']]['output_of'] = phase_id
    end
    phase['inputs'].each do |input|
      # input.update(cff_elements[input['id']].merge(input))
      cff_elements[input['id']]['input_of'] = phase_id
    end
  end

  cff_elements.select{ |id, e| e['type'] == 'process_phase' }.each do |phase_id, phase|
    phase['pre_phases'] = phase['inputs'].flat_map{ |e| cff_elements[e['id']]['output_of'] || [] }
    phase['post_phases'] = phase['outputs'].flat_map{ |e| cff_elements[e['id']]['input_of'] || [] }
  end

  site.pages.each do |page|
    if page.data['cff_properties'].is_a?(Hash)
      site.regenerator.add_dependency(page.path, cff_elements)
      page.data['cff'] = cff_elements
    end
  end
  
  #site.regenerator.add_dependency("_includes/cff-phase.md.liquid", cff_elements)
  #site.regenerator.regenerate?("pages/framework/phase_2.md")

  site.config['cff'] = cff_elements

  Jekyll.logger.info "CFF Site Variable Hook:", "Injected #{ cff_elements.length } CFF items from #{ site.pages.length } pages."
end


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

  site.config['cff'] = cff_elements

  Jekyll.logger.info "CFF Site Variable Hook:", "Injected {{ site.cff.length }} CFF items from {{ site.pages.length }} pages."
end


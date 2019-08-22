def nyc_pigeon_organizer(data)
  new = {}
  data.each_with_object({}) do |(key, value), list|
    value.each do |inner_v, names|
      names.each do |name|
         new[name] = {}
         new[name][key] = []
         new[name][key] << inner_v.to_s
         
      end
    end
  end
  
  new
end

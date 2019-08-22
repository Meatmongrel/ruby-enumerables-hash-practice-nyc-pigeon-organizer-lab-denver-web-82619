def nyc_pigeon_organizer(data)
  new = {}
  data.each_with_object({}) do |(key, value), result|
    value.each do |inner_v, names|
      names.each do |name|
         new[name] = {}
         new[name][key] = []
         
      end
    end
  end
  
  new
end

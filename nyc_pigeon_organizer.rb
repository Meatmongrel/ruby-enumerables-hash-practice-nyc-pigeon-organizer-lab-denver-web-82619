def nyc_pigeon_organizer(data)
  new = {}
  data.each_with_object({}) do |(key, value), list|
    value.each do |inner_v, names|
      names.each do |name|
         new[name] = {}
         
      end
    end
  end
  
  new
end

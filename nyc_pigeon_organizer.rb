def nyc_pigeon_organizer(data)
  new = {}
  data.each_with_object({}) do |(key, value), list|
    value.each do |inner_v, names|
      names.each do |name|
         list[name] = {}
         list[name][key] ||= []
         list[name][key] << inner_v.to_s
         # ||= is very weird but I was browsing forums and found that it may work for this case
         #when I saw all the tests pass and caused me to search further
         
      end
    end
  end
end

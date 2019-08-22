def nyc_pigeon_organizer(data)
  new = {}
  data.each_with_object({}) do |(key, value), list|
    value.each do |inner_v, pigeons|
      pigeons.each do |name|
         list[name] ||= {}
         list[name][key] ||= []
         list[name][key] << inner_v.to_s
         # ||= is very weird but I was browsing forums and found that it may work for this case
         #when I saw all the tests pass and caused me to search further
         #almost as if it iterates WITHIN the iteration WITHIN a hash thats WITHIN another hash...
         #sheesh
         
      end
    end
  end
end

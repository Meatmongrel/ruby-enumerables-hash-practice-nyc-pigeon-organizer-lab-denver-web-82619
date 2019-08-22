def nyc_pigeon_organizer(data)
  new = {}
  data.each_with_object({}) do |(key, value), list|
    value.each do |inner_v, pigeons|
      pigeons.each do |name|
         list[name] ||= {}
         list[name][key] ||= []
         list[name][key] << inner_v.to_s
         #I couldnt figure out how to put more than where the pigeon lived at first 
         #but then I found the "OR equals" ||= and saw it has a lot of interesting uses
         # ||= is very bizzare but I was browsing forums and found that it may work for this case
         #when I saw all the tests pass and caused me to search further
         #almost as if it iterates WITHIN the iteration WITHIN a hash thats WITHIN another hash...
         #sheesh
         
      end
    end
  end
end

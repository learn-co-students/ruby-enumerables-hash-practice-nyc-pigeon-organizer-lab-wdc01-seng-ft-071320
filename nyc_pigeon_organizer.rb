require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_list = {}
  
  data.each do | outer_key, outer_value |
    outer_value.each do | inner_key, inner_value_name |
      inner_value_name.each do | pigeon_name |
        unless pigeon_list.include?(pigeon_name)
          pigeon_list[pigeon_name] = {}
        end
        
        unless pigeon_list[pigeon_name].include?(outer_key)
          pigeon_list[pigeon_name][outer_key] = []     
        end
        
          pigeon_list[pigeon_name][outer_key].push(inner_key.to_s) 
      end
    end
  end
  
  pigeon_list
end

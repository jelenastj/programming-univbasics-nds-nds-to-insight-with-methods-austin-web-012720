require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  
  result = {}
  nil
  index = 0 
  while index< nds.length do
    
     sum = 0 
     movie_number = 0 
    
    while movie_number <nds[index][:movies].length do
     
        sum+= nds[index][:movies][movie_number][:worldwide_gross]
        movie_number +=1 
      end
      result[nds[index][:name]]= sum 
      
      index += 1 
      end
 result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input




def gross_for_director(director_data)
  index = 0 
  total = 0 
  while index < director_data[:movies].length do
    total+=director_data[:movies][index][:worldwide_gross]
    index+=1
  end
  total
  end

pp directors_database



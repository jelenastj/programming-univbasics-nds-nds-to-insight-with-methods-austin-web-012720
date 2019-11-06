require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  
  result = {}
  nil
  first_index = 0 
  while first_index<nds.length do
    second_index = 0 
    total = 0 
    while second_index < nds[first_index][:movies].length do
      total+=gross_for_director(nds[second_index])
      second_index+=1 
    end
     result[nds[first_index][:name]] = total
     first_index+=1
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



$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
pp directors_database
def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  producer_i = 0 
  while producer_i < nds.count do 
  movies_i = 0 
  producer_count = 0 
  producer_name = nds[producer_i][:name]
    #go into movies: worldwide_gross:
    while movies_i < nds[producer_i][:movies].count do 
    producer_count += nds[producer_i][:movies][movies_i][:worldwide_gross] 
    #name of director / movies
    movies_i += 1 
    end
  producer_i += 1
  result[producer_name] = producer_count
  end
   result
end

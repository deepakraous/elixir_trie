defmodule Trie do
  
  @trie_map %{96781234 => ["/", [0], [-99999] ] }
  @characters ""
  
  def add(trie \\@trie_map, items) do
       splitter = split(trie,items)     
  end

  def split(trie,items)  do
     
    splitted_items = items |>String.split( "", trim: true)
                           |>Enum.map( fn(item)-> 
                                              key = gen_unique_id
                                              add_to_trie(trie, item)                                          
                                          end )
    
   # final_item = add_relation(splitted_items, items)
                       
  end

  def create_trie do
      @trie_map
  end
 
  #To do 
  def add_to_trie(trie, item) do

    key = gen_unique_id
    Map.put( trie,  key, [item,[], [0] ]  )  

  end
  
  def add_relation( [ ],raw_data) do 

     []
 
  end 

  #Todo
  def add_relation( [h | t ] = raw_trie,raw_data) do       
 
  end

  defp gen_unique_id() do
     Enum.random(1..1_00000) 
  end

  def show_trie(new_item) do
    new_item  
  end
  
  #Access the list
  def access(list) do

    Enum.each(list, fn(x) ->
      Enum.each(x, fn(y) ->
        Enum.each(Map.keys(y), fn(z) ->
          IO.inspect(z)
          IO.inspect(y[z])
        end)
      end)
    end)
  
  end

end



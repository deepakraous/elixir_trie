defmodule Trie do
  
  @trie_map %{}
  @characters ""

  def add(items)  do
       splitter = items |> split 
  end

  def split(items)  do
     
    splitted_items = items |>String.split( "", trim: true)
                           |>Enum.map( fn(item)-> 
                                              key = gen_unique_id()
                                              Map.put( @trie_map,  key, [item,{},{}, 0]  )
                                          end )
    
  end

  defp gen_unique_id() do
     Enum.random(1..1_00000) 
  end

  def show_trie(new_item) do
    new_item  
  end

  #
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



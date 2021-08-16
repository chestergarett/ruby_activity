def list names
  # TODO
  puts names.length 
end


list = [ {name: 'test1'}, {name: 'test2'}]
list(list)
# puts list.slice(0,list.length-1).map { |item| item[:name]  }.join(", ") +  (list.length>1 ? ' & ' : '') + list[list.length-1][:name]
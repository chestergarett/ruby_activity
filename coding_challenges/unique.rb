def unique_in_order(iterable)
  #your code here
  return [] if iterable.length==0
  
  if iterable.kind_of?(Array)
      array = iterable
  else
    array = iterable.split('')
  end
  
  output_list = []
  current_letter = ''
  
  for letter in array
    if letter != current_letter
        output_list.append(letter)
        current_letter = letter
    end
  end
  return output_list
end
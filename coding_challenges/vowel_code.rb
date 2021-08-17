def encode(s)
  # your code here
  array = s.split('')
  new_array = []

  for letter in array
    if letter=='a'
      new_array.push('1')
    elsif letter=='e'
      new_array.push('2')
    elsif letter=='i'
      new_array.push('3')
    elsif letter=='o'
      new_array.push('4')
    elsif letter=='u'
      new_array.push('5')
    else
      new_array.push(letter)
    end
  end
  return new_array.join('')
end

def decode(s)
  # ...and here
  array = s.split('')
  new_array = []
  for letter in array
    if letter=='1'
      new_array.push('a')
    elsif letter=='2'
      new_array.push('e')
    elsif letter=='3'
      new_array.push('i')
    elsif letter=='4'
      new_array.push('o')
    elsif letter=='5'
      new_array.push('u')
    else
      new.push(letter)
    end
  end
  return new_array.join('')
end

puts encode('hello')
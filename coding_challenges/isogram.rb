def is_isogram(string)
  #your code here
  lower_string = string.downcase.split('')
  letter_split = lower_string.split
  array = []
  if letter_split.length==0
    return true
  end
  for letter in letter_split do
    if letter.match(/^[[:alpha:]]+$/)
      puts false
    end
      array.append(letter)
  end
    
  puts true 
end

#is_isogram("")
letter_split = "isogram".downcase.split("")
puts letter_split



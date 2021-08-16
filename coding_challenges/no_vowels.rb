def disemvowel(str)
  string_array = str.split("")
  vowels = "aeiou"
  i = 0
  while i < str.length
    if vowels.include?(str[i])
      string_array[i] =  ""
    end
    i +=1
  end

  new_string = string_array.join
  #new_string = new_string.gsub(/\s+/,"")
  puts new_string
end


disemvowel("This website is for losers LOL!")



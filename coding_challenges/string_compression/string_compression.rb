#String Compression

#Implement a method to perform basic string compression using the counts
#of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the
#"compressed" string would not become smaller than the original string, 
#your method should return the original string. You can assume the string has only uppercase and lowercase letters (a - z).

def str_compression(string)
  #method to check for repeating letters
  def repeating_letters?(str)
    str.downcase.chars.group_by(&:itself).values.any? { |a| a.size > 1 }
  end

  #return string there is no repeating letter
  return string if repeating_letters?(string) == false
  
  new_string = string.downcase
  array = new_string.chars.chunk{ |i| i}.map{ |char, count|  [char, count.length]}

  #return array with repeating letters
  array.flatten.map{ |s| s.to_s }.join('')
end



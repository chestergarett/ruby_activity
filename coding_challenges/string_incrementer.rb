# def increment_string(input)
#   #your code here
#   if input.count("0-9") <= 0
#     return "#{input}1"
#   else
#     input_array = input.scan(/\d+|[A-Za-z]+/)
#     leading_zeroes = input_array[1].match(/^0+/)
#     suceeding_number = input_array[1].to_i
#     if leading_zeroes.nil?
#       puts "#{input_array[0]}#{(suceeding_number+1).to_s}"
#     else 
#       if leading_zeroes[0].to_i==0 and suceeding_number==0
#         puts "#{input_array[0]}#{suceeding_number.to_s}1"
#       else
#         puts "#{input_array[0]}#{leading_zeroes[0]}#{(suceeding_number+1).to_s}"
#       end
#     end
#   end
# end

def increment_string(input)
  return "1" if input==""
  #your code here
  input_array = input.scan(/\d+|[A-Za-z]+/)
  if input_array[input_array.length-1].count("0-9") <= 0
    return input_array.join("")+"1"
  else
    return input_array.slice(0,input_array.length-1).join("")+input_array[input_array.length-1].succ
  end
end

puts increment_string("f00b4r")
# puts "001".match(/^0+/)[0].to_i.class
# puts "009".succ

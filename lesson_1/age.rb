
def get_age(age,number)
  age.to_f+number.to_f
end

puts "How old are you?"
input = gets.chomp
25.times {print "-"}
puts
puts "In 10 years you will be"
puts get_age(input,10)
puts "In 20 years you will be"
puts get_age(input,20)
puts "In 30 years you will be"
puts get_age(input,30)
puts "In 40 years you will be"
puts get_age(input,40)

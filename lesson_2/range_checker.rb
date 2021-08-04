def range_checker(number)
  if number.to_f.between?(0,50)
    puts "#{number} is between 0 and 50"
  elsif number.to_f.between?(51,100)
    puts "#{number} is between 51 and 100"
  elsif number.to_f>100
    puts "#{number} is greater than 100"
  else
    puts "Invalid number"
  end
end



puts "RANGE CHECKER"
25.times {print "-"}
puts
print "Enter random number"
puts
input = gets.chomp
25.times {print "-"}
puts
range_checker(input)
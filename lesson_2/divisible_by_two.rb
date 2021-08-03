arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_array=[]


arr.each do |n|
    if n%2==0
        new_array.push(n)
    end
end

puts new_array
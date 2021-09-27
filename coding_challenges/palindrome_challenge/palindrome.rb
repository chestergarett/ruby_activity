def is_palindrome(str)
  array = str.split('')
  hash = Hash.new(0)

  array.each do |s|
    hash.include? s ? hash[s]+=1 : hash[s]=1
  end

  odd=0
  hash.each_value do |v|
    odd+=1 if v%2!=0
  end

  odd > 1 ? false : true  
end

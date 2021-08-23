def find_uniq(arr)
  arr = arr.sort()
  not_unique = arr[0]
  unique = arr[0]
  for item in arr
    if item==unique
      not_unique = item 
    else
      unique = item
    end  
  end
  return unique
end

#puts find_uniq([1,1,1,1,0])
arr =  [1,1,1,1,0].sort()

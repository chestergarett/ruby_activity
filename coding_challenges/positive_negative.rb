def count_positives_sum_negatives(lst)
  if lst.length==0
      return []
  end
  #your code here
  positive = 0
  negative = 0
  for n in lst
      if n>0
      positive = positive +1
      else
      negative = negative + n
      puts n
      end
  end
  puts [positive,negative]
end

arr = [44, 32, 28, -83, -69, 41, -74, 42, -73, -92, 7, -78, -70, 49, 52, -56, -74, 39, 31, -55, -33, 59, -95, 73, 93, 22, -26, -36, 73, 3]

count_positives_sum_negatives(arr)

def multiply(a,b)
  return multiply(a,b) if a<b
  return a.to_f+multiply(a,b-1).to_f if b>0
  return 0 if b==0
end

multiply(7,3)
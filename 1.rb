
arr = ['10', '11', '9', '7', '8']

arr1 = arr.sort do |a, b|
  b.to_i <=> a.to_i
end

p arr1
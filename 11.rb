arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr1 = arr.map do |subarray|
  subarray.select do |item|
    item % 3 == 0
  end
end

p arr1
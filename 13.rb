arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr1 = arr.sort_by do |subarray|
  subarray.select do |item|
    item % 2 == 1
  end
end

p arr1
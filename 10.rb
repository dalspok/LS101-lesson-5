arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# --- var 1 ---

# arr1 = arr.map do |hsh|
#   hsh.clone
# end

# arr1.each do |hsh|
#   hsh.each_pair do |key, value|
#     hsh[key] = value + 1
#   end
# end

# --- var 2 ---

arr1 = arr.map do |hsh|
  new_hsh = {}
  hsh.each_pair do |key, value|
    new_hsh[key] = value + 1
  end
  new_hsh
end

p arr
p arr1



# 1

# arr = ['10', '11', '9', '7', '8']

# p arr.sort_by(&:to_i).reverse

# 2

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# p books.sort_by{ |book| book[:published].to_i }

# 3

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p arr1[2][1][3]
# p arr2[1][:third][0]
# p arr3[2][:third][0][0]
# p hsh1["b"][1]
# p hsh2[:third].key(0)

# 4

# arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4
# p arr1

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2] = 4
# p arr2

# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2][0] = 4
# p hsh1

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2[['a']][:a][2] = 4
# p hsh2

# 5

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# p munsters.select { |name, info| info['gender'] == "male" }.map { |_, person| person['age'] }.sum

# 6

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, info|
#   puts "#{name} is a #{info['age']}-year-old #{info['gender']}."
# end

# 8

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'],
#   third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each do |_ , arr|
#   arr.each do |string|
#     string.each_char do |char|
#       print char if %w(a e i o u A E I O U).include? char
#     end
#   end
# end

# 9

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr1 = arr.map do |subarr|
#   subarr.sort.reverse
# end

# p arr1

# 10

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# arr1 = arr.map do |hsh|
#   new_hsh = {}
#   hsh.each do |key, value|
#     new_hsh[key] = value + 1
#   end
#   new_hsh
# end


# p arr1

# 11

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# arr1 = arr.map do |subarr|
#   subarr.select do |number|
#     number % 3 == 0
#   end
# end

# p arr1

# 12

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# p arr.each_with_object({}) { |subarr, hsh| hsh[subarr[0]] = subarr[1] }

# 13

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
# arr1 = arr.sort_by do |subarr|
#   subarr.select { |num| num.odd? }
# end

# p arr1

# 14

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# arr = []

# hsh.each_value do |info|
#   arr << info[:colors].map { |color| color.capitalize }
#   arr << info[:size].upcase
# end

# p arr

# 15

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
# arr1 = arr.select do |hsh|
#   hsh.values.all? do |value|
#     value.all? { |number| number.even? }
#   end
# end

# p arr1

# 16

# HEXCHARS = (0..9).to_a.map(&:to_s) + ("a".."f").to_a
# UUID_TEMPLATE = [8, 4, 4, 4, 12]

# def uuid
#   UUID_TEMPLATE.map do |size|
#     str = ""
#     size.times { str << HEXCHARS.sample }
#     str
#   end
#   .join("-")
# end

# p uuid

















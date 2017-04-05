munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# male_munsters = munsters.select do |_, value|
#   value["gender"] == "male"
# end

# ages = male_munsters.map do |_, value|
#   value["age"]
# end

# age = ages.reduce(:+)

# p age

# ---var 2---

# ages = munsters.map do |_, value|
#   if value["gender"] == "male"
#     value["age"]
#   else
#     0
#   end
# end

# age = ages.reduce(:+)

# p age

# --var 3---

age = munsters.reduce(0) do |memo, (_, value)|
  if value["gender"] == "male"
    memo += value["age"]
  else
    memo
  end
end

p age





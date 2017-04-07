HEX = ("a".."f").to_a + (0..9).to_a
STRUCTURE = [8,4,4,4,12]

def id(size)
  str = ""
  size.times do |_|
    str << HEX.sample.to_s
  end
  str
end


def uuid()
  arr = STRUCTURE.map do |item|
    id(item)
  end
  arr.join("-")
end

p uuid()
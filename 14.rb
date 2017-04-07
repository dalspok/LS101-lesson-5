hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = []
hsh.each_value do |subhsh|
    if subhsh[:type] == "fruit"
      new_arr << subhsh[:colors].map(&:capitalize)
    elsif subhsh[:type] == "vegetable"
      new_arr << subhsh[:size].upcase
    end
  end

p new_arr
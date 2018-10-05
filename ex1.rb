def weight_watchers(my_hash)
	calc_calories = my_hash["Lipides"] * CALORIES["Lipides"]
	calc_calories += my_hash["Glucides"] * CALORIES["Glucides"]
	calc_calories += my_hash["Protéines"] * CALORIES["Protéines"]
	return calc_calories
end

CALORIES=Hash.new 

CALORIES["Lipides"] = 9
CALORIES["Glucides"] = 4
CALORIES["Protéines"] = 4

WELSH=Hash.new

WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.3

puts weight_watchers(WELSH)

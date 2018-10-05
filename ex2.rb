def meal_weight_watchers(my_hash)
	calc_calories = 0
	my_hash.each { 
		|key, value| 
		value.each { 
			|key2, value2| 
			CALORIES.each {
				|key3, value3|
				calc_calories += value3 * value2
			}
		}
	}
	return calc_calories
end

CALORIES=Hash.new 

CALORIES["Lipides"] = 9
CALORIES["Glucides"] = 4
CALORIES["Protéines"] = 4

MENU=Hash.new

WELSH=Hash.new
FRITES=Hash.new
BIERE=Hash.new

WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.3 

FRITES["Lipides"] = 15
FRITES["Glucides"] = 41
FRITES["Protéines"] = 3.4

BIERE["Lipides"] = 0
BIERE["Glucides"] = 25
BIERE["Protéines"] = 4 

MENU["WELSH"] = WELSH
MENU["FRITES"] = FRITES
MENU["BIERE"] = BIERE

puts meal_weight_watchers(MENU)
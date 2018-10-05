def meal_price()
	calc_calories = 0
	calc_calories += WELSH[:prix]
	calc_calories += FRITES[:prix]
	calc_calories += BIERE[:prix]
	return calc_calories
end

PRIX=Hash.new 

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

WELSH[:prix] = 15
FRITES[:prix] = 4 
BIERE[:prix]  = 5

PRIX["WELSH"] = WELSH
PRIX["FRITES"] = FRITES
PRIX["BIERE"] = BIERE

=begin
puts meal_weight_watchers(MENU)
=end
puts meal_price
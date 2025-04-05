extends CharacterBody2D

var resistenza_pressione = 10

var griglia = [] #Griglia delle stanze, Array 2D, contine riferimenti alle
#stanze, oppure vuoto se non c'e una stanza o fuori se l'area è fuori 
#dal sottomarino
#dimensioni x,y della griglia. 
var dim_x = 12 
var dim_y =  8

func ready():
	
	#inizializza stanze 
	var i = 0
	var j =  0
	while i < dim_x:
		griglia.append([])
		while j < dim_y:
			griglia[i]
			j += 1
	i += 1

func get_room(x,y):
	
	var casella = griglia[x][y]
	
	if casella == "vuoto" or "fuori" or casella is Stanza:
		return casella
	else:
		assert(false,"Errore, casella della griglia non definita")

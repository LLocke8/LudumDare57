extends Node2D

class_name Stanza

@export var pressure_resistance : int = 1
@export var hp : int = 10
@export var nome : String = "Stanza"
@export_multiline var descrizione : String = ""

func get_sprite():
	return $Sprite2D

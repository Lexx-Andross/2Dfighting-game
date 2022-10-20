extends KinematicBody2D

onready var animationSprite = $AnimatedSprite

var isInCombo = false 

var timeTillNextInput = 0
var time = 0

var currentAttack = 0
var previousAttack = 0 

func _ready():
	time = timeTillNextInput


func _process(delta):
	if(imput.is_action_just_pressed9("ui_punch")):
		if(currentAttsck == 0):
			animatedSprite.play("Straight Punch")
		elif(currentAttack == 1):
			animatedSprite.play("upper cut")
		elif(currentAttack ==2):
			animatedsprite.play("low kick")

		isInCombo = true
		currentAttack +=1
		
	if(isInCombo):
		time -= delta 


extends KinematicBody2D

onready var animatedSprite = $AnimatedSprite

var isInCombo = false 

var timeTillNextInput = 0
var time = 0

var currentAttack = 0
var previousAttack = 0 

func _ready():
	time = timeTillNextInput


func _process(delta):
	if(Input.is_action_just_pressed9("ui_punch")):
		if(currentAttack == 0):
			animatedSprite.play("Straight Punch")
		elif(currentAttack == 1):
			animatedSprite.play("upper cut")
		elif(currentAttack ==2):
			animatedSprite.play("low kick")

		isInCombo = true
		currentAttack +=1
		_Reset_Attack_Timer()

	if(isInCombo):
		time -= delta  
		
		if(time < 0):
			time = timeTillNextInput
			isInCombo = false 
			currentAttack = 0 
			animatedSprite.play("Idle") 
			

func _Reset_Attack_Timer():
	if(currentAttack < 4):   
		time = timeTillNextInput 


func _on_Right_hand_body_entered(body):
	pass # Replace with function body.


func _on_Left_foot_body_entered(body):
	pass # Replace with function body.

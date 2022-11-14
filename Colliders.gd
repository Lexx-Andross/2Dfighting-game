extends Node2D

var p1FightColl = []
var disableColl = true

func _ready():
	pass # Replace with function body.


func _process(delta):
	pass


func _on_Left_Hand_body_entered(body):
	pass # Replace with function body.


func _on_Right_hand_body_entered(body):
	pass # Replace with function body.


func _on_Left_foot_body_entered(body):
	pass # Replace with function body.


func _on_Right_foot_body_entered(body):
	pass # Replace with function body.

func _Handle_All_Colider_Disabling(var isDisabled):
	for colliders in get_tree().get_nodes_in_group("P1 Hand Feet Coll"):
		var h = 0 
		
		p1FightColl.insert(h, colliders)
		p1FightColl[h].set_disabled(isDisabled)
		
		print(p1FightColl[h].name)
		
		if(p1FightColl[h].is_disabled()):
			print(p1FightColl[h].name + " is disabled")
		elif(!p1FightColl[h].is_disabled()):
			print(p1FightColl[h].name + " is NOT disabled")
		
		print("")
		h += 1

func _Handle_Specific_Collider_Disabling(var isDisabled, var pickedColl):
	p1FightColl[pickedColl].set.disabled(isDisabled)
	
	if(p1FightColl[pickedColl].is_disabled()):
		print(p1FightColl[pickedColl].name + " has been enabled")
	

extends CanvasLayer

var RTX = false

func _ready():
	$RTXoff.visible = true
	$RTXon.visible = false
	$Button.frame = 0

func _input(event):
	if Input.is_mouse_button_pressed(1):
		RTX = !RTX
		switch_rtx()
		

func switch_rtx():
	if RTX == true:
		$RTXoff.visible = false
		$RTXon.visible = true
		$Button.frame = 1
	else:
		$RTXoff.visible = true
		$RTXon.visible = false
		$Button.frame = 0

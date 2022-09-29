extends Node2D

var PortOldText = "7500"

func _on_Port_text_changed():
	if $Port.text.length() > 4 or not $Port.text.is_valid_integer(): # I was setting it before it was used with the old value before. Then I realised I could package it all together!
		$Port.text = PortOldText
		$Port.cursor_set_column(4)
	else:
		PortOldText = $Port.text

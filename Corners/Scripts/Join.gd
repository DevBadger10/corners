extends Node2D

var PortOldText = "7500"

func _on_Port_text_changed():
	if $Port.text.length() > 4:
		$Port.text = PortOldText
		$Port.cursor_set_column(4)
	else:
		PortOldText = $Port.text
	if not str(int($Port.text)).length() == $Port.text.length() or not int($Port.text) == 0:
		$Port.text = PortOldText
		$Port.cursor_set_column(4)

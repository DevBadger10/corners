extends Node2D

var PortOldText = "7500"
var IPOldText = ""

func _on_Port_text_changed():
	if $Port.text.length() > 4 or not $Port.text == "" and not $Port.text.is_valid_integer(): # I was setting it before it was used with the old value before. Then I realised I could package it all together! And then it didn't account for spaces. Then I fixed it and my code worked first time!
		$Port.text = PortOldText
		$Port.cursor_set_column(4)
	else:
		PortOldText = $Port.text

func _on_IP_text_changed():
	if $IP.text == "":# and not $IP.text.is_valid_ip_address(): This wasn't working :P
		$IP.text = IPOldText
		$IP.cursor_set_column(1234567890)
	else:
		IPOldText = $IP.text

func _on_Join_pressed():
	if $Port.text.length() == 4 and $Port.text.is_valid_integer():
		if $IP.text.is_valid_ip_address():
			pass
		else:
			$Error.text = "Error: Invalid IP Address."
			$"Error Disappear".start()
			yield($"Error Disappear", "timeout")
			$Error.text = ""
	else:
		$Error.text = "Error: Invalid Port."
		$"Error Disappear".start()
		yield($"Error Disappear", "timeout")
		$Error.text = ""

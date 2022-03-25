Case of 
	: (Form event code:C388=On Clicked:K2:4)
		//cuz even if the field is empty the entity won't be added
		If (Form:C1466.isValid)
			ALERT:C41("A new task was added successfully !")
			
		Else 
			//recursive loop
			//$empty:=True
			ALERT:C41("You forgot to fill some field")
		End if 
End case 
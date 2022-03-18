Case of 
	: (Form event code:C388=On Clicked:K2:4)
		C_BOOLEAN:C305($empty)
		$empty:=True:C214  //cuz even if the field is empty the entity won't be added
		While ($empty)
			If (([Task:1]label:2#Null:C1517) & ([Task:1]startingDate:3#!00-00-00!) & ([Task:1]deadline:4#!00-00-00!) & ([Task:1]priority:7#Null:C1517) & ([Task:1]status:6#Null:C1517))
				ALERT:C41("A new task was added successfully !")
				$empty:=False:C215
			Else 
				ALERT:C41("You forgot to fill some field")
				$empty:=True:C214
			End if 
		End while 
End case 
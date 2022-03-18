Case of 
	: (Form event code:C388=On Data Change:K2:15)
		If (vDate1>[Task:1]startingDate:3)
			vDate1:=[Task:1]deadline:4
		Else 
			vDate1:=[Task:1]startingDate:3
			//ALERT("you selected an old day! your deadline will be set to today")
		End if 
End case 
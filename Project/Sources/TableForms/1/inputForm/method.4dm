Case of 
	: (Form event code:C388=On Data Change:K2:15)
		Form:C1466.isValid:=([Task:1]label:2#"") & ([Task:1]startingDate:3#!00-00-00!) & ([Task:1]deadline:4#!00-00-00!) & ([Task:1]priority:7#"") & ([Task:1]status:6#"")
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.isValid:=False:C215
		
		
		
End case 
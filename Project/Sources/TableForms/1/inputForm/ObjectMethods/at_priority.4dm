Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		ARRAY TEXT:C222(at_priority; 0)
		LIST TO ARRAY:C288("priority"; at_priority)
	: (FORM Event:C1606.code=On Data Change:K2:15)
		$position:=at_priority
		[Task:1]priority:7:=at_priority{$position}
End case 
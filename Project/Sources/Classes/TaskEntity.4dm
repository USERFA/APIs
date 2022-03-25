Class extends Entity


exposed Function remove_by_ID
	C_LONGINT:C283($1)
	
	If ((This:C1470#Null:C1517))  // & (This.ID=Num($1)))
		This:C1470.drop()
		$0:="Task was removed successfully!"
	Else 
		$0:="You're trying to delete a non-existing entity"
	End if 
	
	
	
exposed Function update_by_ID
	//need tp check if all the att are not undefined so that if the user only inpuuted one att, the other should stay stable
	C_OBJECT:C1216($1)
	If (This:C1470#Null:C1517)
		This:C1470.fromObject($1)
		This:C1470.save()
		//This.label:=$1.label
		//This.deadline:=$1.deadline
		//This.startingDate:=$1.startingDate
		//This.priority:=$1.priority
		//This.status:=$1.status
		$0:="The object was modified successfully"
	Else 
		$0:="The object to modify does not exist"
	End if 
	
	
	
exposed Function get_by_ID
	C_OBJECT:C1216($0)
	If (This:C1470#Null:C1517)
		$0:=This:C1470
	End if 
	
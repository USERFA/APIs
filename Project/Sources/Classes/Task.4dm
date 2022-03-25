Class extends DataClass

exposed Function test  //test if the request will be detected by the server
	$0:="Heey"
	
	
	
exposed Function create
	C_OBJECT:C1216($1)
	C_OBJECT:C1216($0)
	$task:=This:C1470.new()
	$task.fromObject($1)  //matching att by att the 2 objects (empty+input)
	//If ($task.label="" | $task.details="")
	//$task.label:=String($1.label)
	//$task.details:=String($1.details)
	//End if 
	//If ($task.priority="" |  | $task.status="")
	//$task.priority:=String($1.priority)
	//$rask.status:=String($1.status)
	//End if 
	//If ($task.startingDate=!00-00-00! |  | $task.deadline=!00-00-00!)
	//$task.startingDate:=Date($1.startingDate)
	//$task.deadline:=Date($1.deadline)
	//End if 
	$task.save()  //saving it to the table
	$0:=$task
	
	//exposed Function remove  
	//C_LONGINT($1)  //ID
	//$tasks:=This.all()
	//$task:=New object()
	//For each ($task; $tasks)
	//If (($task#Null) &  & ($task.ID=$1))
	//$task.drop()
	//$0:="Task was removed successfully!"
	//Else 
	//$0:="You're trying to delete a non-existing entity"
	//End if 
	//End for each 
	
	
	
exposed Function all_records
	$tasks:=This:C1470.all()
	$0:=$tasks
	
	
	//exposed Function update
	//C_LONGINT($1)
	//C_OBJECT($0)
	//$task:=New object()
	//$task:=This.query("ID = :1"; $1).first()
	//If ($task#Null)  //or use directly /Rest/Task(ID)
	//$task.fromObject($1)
	//$0:=$task
	//Else 
	//$0:="The object to modify does not exist"
	//End if 
	//$method=update at the end of the url + __KEY: ID of the entity to modify + complete:true
	
	
	
	
	
	//exposed Function search_by_ID  //one entity outputted
	//C_OBJECT($0)
	//C_LONGINT($1)
	//$task:=New object
	//$tasks:=This.all()
	//For each ($task; $tasks)
	//If ($task#Null)
	//$0:=$task
	//Else 
	//$0:="The task does not exist"
	//End if 
	//End for each 
	
	
	
	
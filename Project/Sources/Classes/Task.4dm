Class extends DataClass

exposed Function test  //to be detected by the server
	$0:="Heey"
	
	
	
exposed Function create
	C_OBJECT:C1216($1)
	C_OBJECT:C1216($0)
	$task:=This:C1470.new()  //creating a new instance of Task
	$task.fromObject($1)  //matching att by att the 2 objects (emoty+input)
	$task.save()  //saving it ti the table
	$0:=$task
	
	//dataclass(ID)?$method=delete is added directly to the url path
exposed Function remove
	C_LONGINT:C283($1)  //ID
	$tasks:=This:C1470.all()
	$task:=New object:C1471()
	For each ($task; $tasks)
		If (($task#Null:C1517) &  & ($task.ID=$1))
			$task.drop()
			$0:="Task was removed successfully!"
		Else 
			$0:="You're trying to delete a non-existing entity"
		End if 
	End for each 
	
	
	
	
exposed Function all_records
	$tasks:=This:C1470.all()
	$0:=$tasks
	
	
	//to do so directly from postman: add $method=update at the end of the url + __KEY: ID of the entity to modify + complete:true
exposed Function update
	C_LONGINT:C283($1)
	C_OBJECT:C1216($0)
	$task:=New object:C1471()
	$task:=This:C1470.query("ID = :1"; $1).first()
	If ($task#Null:C1517)  //or use directly /Rest/Task(ID)
		$task.fromObject($1)
		$0:=$task
	Else 
		$0:="The object to modify does not exist"
	End if 
	
	
	
	
exposed Function search_by_ID  //one entity outputted
	C_OBJECT:C1216($0)
	C_LONGINT:C283($1)
	$task:=New object:C1471
	$tasks:=This:C1470.all()
	For each ($task; $tasks)
		If (($task#Null:C1517) &  & ($task.ID=$1)
			$0:=$task
		Else 
			$0:="The task does not exist"
		End if 
	End for each 
	
	
	
	
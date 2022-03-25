//%attributes = {}
//ARRAY TEXT($at_file; 0)
//$file:=Select document(""; "*.*"; "select the import file"; 0; $at_file)
//If (ok=1)
//$text:=Document to text($at_file{1})
//For each ($line; Split string($text; "\r"))
//$columns:=Split string($line; "/t")
//$task_label:=$columns.pop()
//$tasks:=ds.Task.query("label =: 1"; $task_label)
//If ($tasks.length=0)
//$t:=ds.Task.new()
//$t.label:=$task_label
//$t.save()
//Else 
//$t:=$tasks.first()
//End if 
//End for each 
//End if 


//ALL RECORDS([Task])
//ORDER BY([Task]; [Task]label; <)

//While (Not(End selection([Task]))

//[Task]details:=[Task]details+"details........"
//SAVE RECORD([Task])
//NEXT RECORD([Task])


//End while 





//QUERY()
//QUERY SELECTION()











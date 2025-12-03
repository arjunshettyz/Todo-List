import 'package:hive/hive.dart';

class ToDoDatabase{
   List toDoList = []; 
  //referance  our box
  final _myBox = Hive.box('mybox');

//run thismetiond if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],

    ];
  }

  void loadData(){
toDoList = _myBox.get("TODOLIST");
  }
  // update the data base
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}
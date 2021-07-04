import 'package:flutter/material.dart';

class ToDoScr extends StatefulWidget {
  const ToDoScr({Key? key}) : super(key: key);

  @override
  _ToDoScrState createState() => _ToDoScrState();
}

class _ToDoScrState extends State<ToDoScr> {
  var output = "";
 List<dynamic> lst =[1,2,3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.redAccent,
        centerTitle: true,
                      title: Text("ToDo Application"),
      ),
       floatingActionButton: FloatingActionButton(backgroundColor: Colors.red,
                                                  tooltip: "Add Task",
                                                   child: ListTile(
                                                 title: Icon(Icons.add)
                                                   ),
           onPressed: (){
         showDialog(context: context, builder: (context){
           return AlertDialog(title: Text("Add Item"),
      content: TextField(
      onChanged: (value){
        output = value;
      },
      ),
             
             actions: [ElevatedButton(onPressed: (){
               setState(() {
                 lst.add(output);
               });
               Navigator.of(context).pop();
             }, child: Text("Add"))],
         );
         }
         );
         },
       ),
body: ListView.builder(itemCount: lst.length,
                       itemBuilder: (context, index){
  return Container(height: 50, color: Colors.amber, margin: EdgeInsets.only(top: 10),
  child: ListTile(title: Text("${lst[index]}"),
  trailing: Container(
      width: 50,
      child: Row(
        children: [
          GestureDetector(child: Icon(Icons.edit), onTap: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(title: Text("Edit Item"),
              content: TextField(
                onChanged: (value){
                  output = value;
                },
              ),
                actions: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      lst.replaceRange(index, index+1, {output});
                    });

                    Navigator.of(context).pop();
                  }, child: Text("Edit")

                  )
                ],
              );
            });
          },),


          GestureDetector(child: Icon(Icons.delete), onTap: (){
            setState(() {
              lst.removeAt(index);
            });
          },
          ),
        ],
      )),
  ),
  );
                          }

),
    );

  }

}


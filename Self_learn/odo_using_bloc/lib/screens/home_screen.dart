import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:odo_using_bloc/fragments/incomplete_todo_fragment.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My BloC TODO App'),
        actions: [
          ElevatedButton(onPressed: () {

          }, child: Text('Completed Todo')),
        ],
      ),
      body: IncompleteTodoFragment()
      ,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(context: context, builder: (context) => _addTodoDialog(context),);
      },child: Icon(Icons.add),),
    );
  }

  Widget _addTodoDialog(BuildContext context){
    return AlertDialog(
      title: Text('Add New Todo'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Todo",
            ),
          ),
          Gap(10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Description",
            ),
          ),
          Gap(10),
          TextField(
            decoration: InputDecoration(
              suffixIcon: IconButton(onPressed: () {

              }, icon: Icon(Icons.calendar_month))
            ),
          ),
        ],

      ),
      actions: [
        TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Cancel")),
        TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Save")),
      ],
    );
  }
}

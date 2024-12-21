import 'package:flutter/material.dart';
import 'package:listview_builder/student_model.dart';

class ListViewBuilderWidget extends StatefulWidget {
  const ListViewBuilderWidget({super.key});

  @override
  State<ListViewBuilderWidget> createState() => _ListViewBuilderWidgetState();
}

class _ListViewBuilderWidgetState extends State<ListViewBuilderWidget> {
  List<StudentModel> students = [
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
    StudentModel('01', 'Umar', 'Computer Science & Engineering'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student List'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) => showStudent(students[index]),
      ),
    );
  }
}

Widget showStudent(StudentModel student) {
  return Card(
    child: ListTile(
      leading: Text(student.id),
      title: Text(student.name),
      subtitle: Text(student.department),
    ),
  );
}

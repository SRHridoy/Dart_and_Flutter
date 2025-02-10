import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/class_view_model.dart';

class AddClassScreen extends StatefulWidget {
  @override
  _AddClassScreenState createState() => _AddClassScreenState();
}

class _AddClassScreenState extends State<AddClassScreen> {
  final _classNameController = TextEditingController();
  final List<TextEditingController> _studentControllers = [];

  @override
  void dispose() {
    _classNameController.dispose();
    for (var controller in _studentControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _addStudentField() {
    setState(() {
      _studentControllers.add(TextEditingController());
    });
  }

  void _removeStudentField(int index) {
    setState(() {
      _studentControllers.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final classViewModel = Provider.of<ClassViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Add Class')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Class Name Field
            TextField(
              controller: _classNameController,
              decoration: InputDecoration(
                labelText: 'Class Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Students List
            Expanded(
              child: ListView.builder(
                itemCount: _studentControllers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        // Student Name Field
                        Expanded(
                          child: TextField(
                            controller: _studentControllers[index],
                            decoration: InputDecoration(
                              labelText: 'Student ${index + 1}',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),

                        // Remove Button
                        IconButton(
                          icon: Icon(Icons.remove_circle, color: Colors.red),
                          onPressed: () => _removeStudentField(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Add Student Button
            ElevatedButton(
              onPressed: _addStudentField,
              child: Text('Add Student'),
            ),
            SizedBox(height: 20),

            // Save Class Button
            ElevatedButton(
              onPressed: () {
                final className = _classNameController.text.trim();
                final students = _studentControllers
                    .map((controller) => controller.text.trim())
                    .where((student) => student.isNotEmpty)
                    .toList();

                if (className.isEmpty || students.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please fill all fields')),
                  );
                  return;
                }

                classViewModel.addClass(className, students);
                Navigator.pop(context);
              },
              child: Text('Save Class'),
            ),
          ],
        ),
      ),
    );
  }
}
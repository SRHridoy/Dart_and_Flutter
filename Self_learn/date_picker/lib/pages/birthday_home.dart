import 'package:date_picker/services/database_service.dart';
import 'package:flutter/material.dart';

class BirthdayHome extends StatefulWidget {
  const BirthdayHome({super.key});

  @override
  State<BirthdayHome> createState() => _BirthdayHomeState();
}

class _BirthdayHomeState extends State<BirthdayHome> {
  final DatabaseService databaseService = DatabaseService();
  TextEditingController nameController = TextEditingController();
  DateTime? selectedDate;
  List<Map<String, dynamic>> birthdays = [];

  @override
  void initState() {
    super.initState();
    _loadBirthdays();
  }

  Future<void> _loadBirthdays() async {
    List<Map<String, dynamic>> data = await databaseService.fetchBirthdays();
    setState(() {
      birthdays = data;
    });
  }

  void _addBirthday() async {
    if (nameController.text.isNotEmpty && selectedDate != null) {
      await databaseService.insertBirthday(
          nameController.text, "${selectedDate!.toLocal()}".split(' ')[0]);
      nameController.clear();
      selectedDate = null;
      _loadBirthdays();
    }
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100)

    );
    if(picked!=null){
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _deleteBirthday(int id) async {
    await databaseService.deleteBirthday(id);
    _loadBirthdays();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Birthday Reminder'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            ElevatedButton(
                onPressed: () {
                  _pickDate(context);
                },
                child: Text(selectedDate == null
                    ? "Pick Birthday"
                    : "Selected: ${selectedDate!.toLocal()}".split(' ')[0])),
            ElevatedButton(onPressed: () {
              _addBirthday();
            }, child: Text('Add Birthday')),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(birthdays[index][DatabaseService.nameColumn]),
                  subtitle: Text(birthdays[index][DatabaseService.dateColumn]),
                  trailing: IconButton(
                      onPressed: () {
                        _deleteBirthday(birthdays[index]['id']);
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                );
              },
              itemCount: birthdays.length,
            ))
          ],
        ),
      ),
    );
  }
}

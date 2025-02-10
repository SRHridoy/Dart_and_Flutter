import 'package:demo_attendance/view_models/attendance_view_model.dart';
import 'package:demo_attendance/view_models/class_view_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'Models/class_model.dart';

import 'Views/add_class_screen.dart';
import 'Views/take_attendance_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ClassViewModel()),
        ChangeNotifierProvider(create: (_) => AttendanceViewModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/add-class': (context) => AddClassScreen(),
        '/take-attendance': (context) => TakeAttendanceScreen(classId: ModalRoute.of(context)!.settings.arguments as String),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final classViewModel = Provider.of<ClassViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Classes')),
      body: StreamBuilder<List<ClassModel>>(
        stream: classViewModel.getClasses(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
          final classes = snapshot.data!;
          return ListView.builder(
            itemCount: classes.length,
            itemBuilder: (context, index) {
              final classData = classes[index];
              return ListTile(
                title: Text(classData.className),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/take-attendance',
                    arguments: classData.id,
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-class');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
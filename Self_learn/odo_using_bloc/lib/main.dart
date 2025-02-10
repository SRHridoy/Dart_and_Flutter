import 'package:flutter/cupertino.dart';
import 'package:odo_using_bloc/db/objectbox_db.dart';
import 'package:odo_using_bloc/locator.dart';
import 'package:odo_using_bloc/my_todo_app.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  locator<ObjectboxDb>().setUpStore();
  runApp(const MyTodoApp());
}
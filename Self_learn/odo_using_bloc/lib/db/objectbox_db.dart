import 'dart:ffi';

import 'package:objectbox/objectbox.dart';
import 'package:odo_using_bloc/objectbox.g.dart';

import '../entities/todo_entity.dart';

class ObjectboxDb{
  late final Store store;
  late final Box<TodoEntity>todoBox;
  Future<void>setUpStore()async{
    final st = await openStore(directory: 'objectbox.db');
    store = st;
    todoBox = store.box<TodoEntity>();
  }
}
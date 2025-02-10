import 'package:objectbox/objectbox.dart';

@Entity()
class TodoEntity {
  @Id()
  int id;
  final String title;
  final String description;
  final DateTime dateTime;
  bool isDone;

  TodoEntity(
      {this.id = 0,
      required this.title,
      required this.description,
      required this.dateTime,required this.isDone});
}

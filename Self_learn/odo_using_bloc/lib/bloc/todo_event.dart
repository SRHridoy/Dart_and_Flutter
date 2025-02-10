part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent extends Equatable{
  @override
  List<Object>get props =>[];
}

class AddTodo extends TodoEvent{
  final TodoEntity todo;
  AddTodo(this.todo);
  @override
  List<Object> get props => [todo];
}

class DeleteTodo extends TodoEvent{
  final int id;
  DeleteTodo(this.id);
  @override
  List<Object> get props => [id];
}

class FetchTodos extends TodoEvent{

  FetchTodos();
  @override
  List<Object> get props => [];
}
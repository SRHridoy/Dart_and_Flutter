part of 'todo_bloc.dart';

@immutable
sealed class TodoState {
  final TextEditingController? titleController;
  final TextEditingController? descriptionController;
  final TextEditingController? dateController;

  const TodoState(this.titleController, this.descriptionController, this.dateController);

  @override
  List<Object>get props => [];
}

// final class TodoInitial extends TodoState {
//   TodoInitial(super.titleController,super.descriptionController,super.dateController);
//   @override
//   List<Object> get props =>[super.titleController,super.descriptionController,super.dateController];
// }

part of 'todo_bloc.dart';

abstract class TodoEvent {
  const TodoEvent();

  List<Object?> get props => [];
}

class TodoStarted extends TodoEvent {}

class AddTodo extends TodoEvent {
  final Todo todo;

  const AddTodo({required this.todo});

  @override
  List<Object?> get props => [todo];
}

class RemoveTodo extends TodoEvent {
  final Todo todo;

  const RemoveTodo({required this.todo});

  @override
  List<Object?> get props => [todo];
}

class ChangeTodo extends TodoEvent {
  final int index;

  const ChangeTodo({required this.index});

  @override
  List<Object> get props => [index];

}

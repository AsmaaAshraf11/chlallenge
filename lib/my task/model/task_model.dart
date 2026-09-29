// task_model.dart
class TaskModel {
  final bool isCompleted;
  final String title;
  final String description;

  TaskModel({
    required this.isCompleted,
    required this.title,
    required this.description,
  });
   TaskModel copyWith({
    String? title,
    String? description,
    bool? isCompleted,
  })
   {
    return TaskModel(
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

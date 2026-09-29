// my task/view/my_task.dart
import 'package:chlallenge/my%20task/view/widget/task_card.dart';
import 'package:chlallenge/my%20task/model/task_model.dart';
import 'package:flutter/material.dart';


class MyTask extends StatefulWidget {
  const MyTask({super.key});

  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  List<TaskModel> tasks = [
    TaskModel(
      title: 'Design Login Screen',
      description: 'Create the login screen UI in Flutter.', isCompleted: false,
    ),
    TaskModel(
      title: 'Connect Firebase',
      description: 'Connect the application with Firebase.', isCompleted: false,
    ),
    TaskModel(
      title: 'Test Application',
      description: 'Test the main features and fix any issues.', isCompleted: false,
    ),
  ];

  void markTaskAsCompleted(int index) {
    setState(() {
      tasks[index] = tasks[index].copyWith(
        isCompleted: true,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: const Text('My Tasks'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return TaskCard(
              task: tasks[index],
              onComplete: () {
                markTaskAsCompleted(index);
              },
            );
          },
        ),
      ),
    );
  }
}
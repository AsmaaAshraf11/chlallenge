// my task/view/widget/task_card.dart
import 'package:chlallenge/my%20task/model/task_model.dart';
import 'package:flutter/material.dart';


class TaskCard extends StatelessWidget {
  final TaskModel task;
  final VoidCallback onComplete;

  const TaskCard({
    super.key,
    required this.task,
    required this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber.shade200,
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              task.description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                Icon(
                  task.isCompleted
                      ? Icons.check_circle
                      : Icons.pending,
                  size: 20,
                  color: task.isCompleted
                      ? Colors.green
                      : Colors.orange,
                ),

                const SizedBox(width: 6),

                Text(
                  task.isCompleted
                      ? 'Completed'
                      : 'Pending',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: task.isCompleted
                        ? Colors.green
                        : Colors.orange,
                  ),
                ),

                const Spacer(),

                ElevatedButton(
                //  style:ButtonStyle(backgroundColor: Colors.),
                  onPressed:
                      task.isCompleted ? null : onComplete,
                  child: Text(
                    task.isCompleted
                        ? 'Completed'
                        : 'Mark as Completed',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
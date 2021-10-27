import 'package:meta/meta.dart';
import 'package:nicy_tasks/feature/domain/model/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getAllTasks();

  Future<Task> deleteTaskById(int id);
}

import 'package:hive/hive.dart';
import 'package:nicy_tasks/feature/data/api/model/api_task.dart';

class HiveService {
  final Box<String> tasksBox;

  HiveService(this.tasksBox);

  Future<List<ApiTask>> getTasks() async {
    final List<ApiTask> tasks = [
      /// test tasks
      ApiTask(
        title: '123',
        content: '123',
        created: DateTime(2021),
        dueDate: DateTime(2021),
      ),
    ];

    return tasks;
  }
}

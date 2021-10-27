import 'package:nicy_tasks/feature/data/api/model/api_task.dart';
import 'package:nicy_tasks/feature/domain/model/task.dart';

class TasksMapper {
  static List<Task> fromApi(List<ApiTask> tasks) {
    return tasks
        .map(
          (task) => Task(
            title: task.title,
            content: task.content,
            created: task.created,
            dueDate: task.dueDate,
          ),
        )
        .toList();
  }
}

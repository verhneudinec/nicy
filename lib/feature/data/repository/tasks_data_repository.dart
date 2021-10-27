import 'package:nicy_tasks/feature/data/api/api_util.dart';
import 'package:nicy_tasks/feature/domain/model/task.dart';
import 'package:nicy_tasks/feature/domain/repository/task_repository.dart';

class TasksDataRepository extends TaskRepository {
  final ApiUtil _apiUtil;

  TasksDataRepository(this._apiUtil);

  @override
  Future<Task> deleteTaskById(int id) {
    throw Exception(); // TODO Удаление задачи по id
  }

  @override
  Future<List<Task>> getAllTasks() {
    return _apiUtil.getTasks();
  }
}

import 'package:nicy_tasks/feature/data/api/model/api_task.dart';
import 'package:nicy_tasks/feature/data/api/services/hive_service.dart';
import 'package:nicy_tasks/feature/data/mapper/tasks_mapper.dart';
import 'package:nicy_tasks/feature/domain/model/task.dart';

class ApiUtil {
  final HiveService _hiveService;

  ApiUtil(this._hiveService);

  Future<List<Task>> getTasks() async {
    final result = await _hiveService.getTasks();
    return TasksMapper.fromApi(result);
  }
}

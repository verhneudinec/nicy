import 'package:nicy_tasks/core/usecases/usecase.dart';
import 'package:nicy_tasks/feature/domain/model/task.dart';
import 'package:nicy_tasks/feature/domain/repository/task_repository.dart';

class GetAllTasks extends UseCase<Task> {
  final TaskRepository taskRepository;

  GetAllTasks(this.taskRepository);

  @override
  Future<Task> call() async {
    return await taskRepository.getAllTasks();
  }
}

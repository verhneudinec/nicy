import 'package:nicy_tasks/feature/domain/model/task.dart';

class ApiTask extends Task {
  ApiTask({
    required title,
    required content,
    required created,
    required dueDate,
  }) : super(
          title: title,
          content: content,
          created: created,
          dueDate: dueDate,
        );

  factory ApiTask.fromDB(Map<String, dynamic> map) {
    return ApiTask(
      title: map['title'],
      content: map['title'],
      created: DateTime.tryParse(map['created']),
      dueDate: DateTime.tryParse(map['dueDate']),
    );
  }
}

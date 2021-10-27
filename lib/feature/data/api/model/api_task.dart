import 'package:nicy_tasks/feature/domain/model/task.dart';

class ApiTask extends Task {
  ApiTask({
    required String title,
    required String content,
    required DateTime created,
    required DateTime dueDate,
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
      created: DateTime.parse(map['created']),
      dueDate: DateTime.parse(map['dueDate']),
    );
  }
}

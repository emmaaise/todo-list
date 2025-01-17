import 'package:hive/hive.dart';

part 'todo.g.dart';

@HiveType(typeId: 0)
class Todo {
  @HiveField(0)
  String title;

  @HiveField(1)
  bool isDone;

  @HiveField(2)
  DateTime createdAt; // New field for creation date and time

  Todo({required this.title, this.isDone = false}) : createdAt = DateTime.now(); // Initialize with current date and time

  void toggleDone() {
    isDone = !isDone;
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_getx/data/models/base_model.dart';
part 'task.freezed.dart';
part 'task.g.dart';
@freezed
class Task with _$Task implements BaseModel {
  
  const factory Task({
    String? id,
    String? userId,
    String? task,
    bool? isCompleted,
    bool? isFavourite,
    DateTime? publishedDate,
    String? taskListId,
    String? taskListName
  })=_Task;
  factory Task.fromJson(Map<String,dynamic>json)=>_$TaskFromJson(json);
}
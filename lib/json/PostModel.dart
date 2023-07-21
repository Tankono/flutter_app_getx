import 'BaseModel.dart';

class PostModel extends BaseModel {
  String? title;

  @override
  mapJson(data) {
    title = data['title'];
  }

  @override
  String toString() {
    return '$title';
  }
}

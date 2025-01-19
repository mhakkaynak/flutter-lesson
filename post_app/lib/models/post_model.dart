import 'package:post_app/core/base/base_model.dart';

class PostModel extends BaseModel {
  PostModel({
    this.body,
    this.id,
    this.title,
    this.userId,
  });

  PostModel._fromJson(o) {
    body = o['body'];
    id = int.tryParse(o['id'].toString());
    title = o['title'];
    userId = int.tryParse(o['userId'].toString());
  }

  @override
  fromJson(o) => PostModel._fromJson(o);

  String? body;
  int? id;
  String? title;
  int? userId;

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map['body'] = body;
    map['id'] = id;
    map['title'] = title;
    map['userId'] = userId;
    return map;
  }
}

abstract class BaseModel<T> {
  T fromJson(dynamic o);

  Map<String, dynamic> toJson();
}

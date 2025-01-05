import 'package:hive/hive.dart';

part 'food.g.dart';

@HiveType(typeId: 0)
class Food {
  Food({
    required this.ingredients,
    required this.name,
    required this.region,
    required this.type,
  });

  @HiveField(1)
  final String ingredients;

  @HiveField(0)
  final String name;

  @HiveField(2)
  final String region;

  @HiveField(3)
  final String type;
}

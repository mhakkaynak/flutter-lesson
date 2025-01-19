import 'package:food_app/food.dart';
import 'package:hive/hive.dart';

class FoodService {
  late final Box<Food> _foodBox;

  FoodService() {
    _foodBox = Hive.box<Food>('foodBox');
    getFoods();
  }

  List<Food> foods = [];

  List<Food> getFoods() => _foodBox.values.toList();

  Food? getFood(int index) => _foodBox.getAt(index);

  Future<void> addFood(Food food) async {
    await _foodBox.add(food);
  }

  Future<void> removeFood(int index) async {
    await _foodBox.deleteAt(index);
  }

  Future<void> clearFoods() async {
    await _foodBox.clear();
  }
}

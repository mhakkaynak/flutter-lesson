import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/food.dart';
import 'package:food_app/food_service.dart';

class FoodNotifier extends StateNotifier<List<Food>> {
  FoodNotifier() : super(FoodService().getFoods());

  final FoodService _foodService = FoodService();

  Future<void> addFood(Food food) async {
    await _foodService.addFood(food);
    state = _foodService.getFoods();
  }

  Future<void> removeFood(int index) async {
    await _foodService.removeFood(index);
    state = _foodService.getFoods();
  }

  Future<void> clearAll() async {
    await _foodService.clearFoods();
    state = [];
  }
}

final foodProvider = StateNotifierProvider<FoodNotifier, List<Food>>((ref) {
  return FoodNotifier();
});

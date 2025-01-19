import 'package:flutter/material.dart';
import 'package:food_app/food.dart';
import 'package:food_app/food_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FoodService _foodService = FoodService();
  final TextEditingController _ingredientsController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Yemek Listesi'),
      actions: [
        IconButton(
          onPressed: () async {
            await _foodService.clearFoods();
            setState(() {
              _foodService.getFoods();
            });
          },
          icon: const Icon(Icons.delete_forever_outlined),
        ),
      ],
    );
  }

  FloatingActionButton _buildFAB(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (_) {
              return _buildBottomSheet(context);
            });
      },
      child: const Icon(Icons.add_outlined),
    );
  }

  Padding _buildBottomSheet(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
        bottom: MediaQuery.of(context)
            .viewInsets
            .bottom, // Klavye yüksekliğini ayarlar
      ),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Yemek Adı',
            ),
          ),
          TextField(
            controller: _typeController,
            decoration: InputDecoration(
              labelText: 'Yemek Türü',
            ),
          ),
          TextField(
            controller: _ingredientsController,
            decoration: InputDecoration(
              labelText: 'Yemek Malzemeleri',
            ),
          ),
          TextField(
            controller: _regionController,
            decoration: InputDecoration(
              labelText: 'Yemek Yöresi',
            ),
          ),
          SizedBox(
            height: 32,
          ),
          ElevatedButton(
            onPressed: () async {
              Food food = Food(
                name: _nameController.text,
                type: _typeController.text,
                ingredients: _ingredientsController.text,
                region: _regionController.text,
              );
              await _foodService.addFood(food);
              setState(() {
                _foodService.getFoods();
              });
              if (context.mounted) {
                Navigator.pop(context);
              }
            },
            child: Text('Kaydet'),
          ),
        ],
      ),
    );
  }

  Padding _buildListItem(int index) {
    Food food = _foodService.foods[index];
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black26,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        food.name,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.black45,
                      ),
                      SizedBox(width: 8),
                      Text(food.type),
                    ],
                  ),
                  Text(food.ingredients),
                  Text(food.region),
                ],
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () async {
                  await _foodService.removeFood(index);
                  setState(() {
                    _foodService.getFoods();
                  });
                },
                icon: Icon(Icons.remove_circle_outline))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: _foodService.foods.length,
        itemBuilder: (_, index) => _buildListItem(index),
      ),
      floatingActionButton: _buildFAB(context),
    );
  }
}

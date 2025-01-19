import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/food.dart';
import 'package:food_app/food_provider.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final TextEditingController _ingredientsController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _regionController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();

  AppBar _buildAppBar(WidgetRef ref) {
    return AppBar(
      title: const Text('Yemek Listesi'),
      actions: [
        IconButton(
          onPressed: () async {
            ref.watch(foodProvider.notifier).clearAll();
          },
          icon: const Icon(Icons.delete_forever_outlined),
        ),
      ],
    );
  }

  FloatingActionButton _buildFAB(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (_) {
              return _buildBottomSheet(context, ref);
            });
      },
      child: const Icon(Icons.add_outlined),
    );
  }

  Padding _buildBottomSheet(BuildContext context, WidgetRef ref) {
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
              ref.watch(foodProvider.notifier).addFood(food);
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

  Padding _buildListItem(
      BuildContext context, Food food, int index, WidgetRef ref) {
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
                  ref.watch(foodProvider.notifier).removeFood(index);
                },
                icon: Icon(Icons.remove_circle_outline))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foods = ref.watch(foodProvider);
    return Scaffold(
      appBar: _buildAppBar(ref),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: foods.length,
        itemBuilder: (_, index) =>
            _buildListItem(context, foods[index], index, ref),
      ),
      floatingActionButton: _buildFAB(context, ref),
    );
  }
}

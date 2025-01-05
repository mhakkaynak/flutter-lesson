import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yemek Listesi'),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Clear All
            },
            icon: const Icon(Icons.delete_forever_outlined),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: 10,
        itemBuilder: (_, index) {
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
                              'name',
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            const CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.black45,
                            ),
                            SizedBox(width: 8),
                            Text('type'),
                          ],
                        ),
                        Text('ingredients'),
                        Text('region'),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        // TODO: remove food
                      },
                      icon: Icon(Icons.remove_circle_outline))
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: add new food - show bottom sheet
        },
        child: const Icon(Icons.add_outlined),
      ),
    );
  }
}

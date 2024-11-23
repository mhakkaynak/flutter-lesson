import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({super.key});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  int _counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: const Icon(Icons.add),
      ),
    );
  }

  Center _buildBody() => Center(
        child: Text('Sayaç: $_counter'),
      );

  void _onPressed() {
    setState(() {
      _counter++;
    });
  }
}

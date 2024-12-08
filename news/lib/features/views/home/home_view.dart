import 'package:flutter/material.dart';
import '../../widgets/containers/news_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String _imagePath =
      'https://images.unsplash.com/photo-1732058824460-d89cb7b4a38f?q=80&w=3272&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  @override
  Widget build(BuildContext context) {
    /*var args = ModalRoute.of(context)!.settings.arguments as String;
    print(args);*/
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Haberler'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            NewsContainer(
              imagePath: _imagePath,
              title: 'Gazete KBB',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              time: '15 dk',
            ),
            NewsContainer(
              imagePath: _imagePath,
              title: 'Gazete KBB',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              time: '15 dk',
            ),
            NewsContainer(
              imagePath: _imagePath,
              title: 'Gazete KBB',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              time: '15 dk',
            ),
            NewsContainer(
              imagePath: _imagePath,
              title: 'Gazete KBB',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              time: '15 dk',
            ),
            NewsContainer(
              imagePath: _imagePath,
              title: 'Gazete KBB',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              time: '15 dk',
            ),
            NewsContainer(
              imagePath: _imagePath,
              title: 'Gazete KBB',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              time: '15 dk',
            ),
          ],
        ),
      ),
    );
  }
}

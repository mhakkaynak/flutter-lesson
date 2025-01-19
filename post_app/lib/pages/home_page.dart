import 'package:flutter/material.dart';
import 'package:post_app/models/post_model.dart';
import 'package:post_app/services/post_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                PostService service = PostService();
                await service.getPosts();
              },
              child: Text('Get posts'),
            ),
            ElevatedButton(
              onPressed: () async {
                PostService service = PostService();
                PostModel model = PostModel(
                    body: 'KBB test ediyor',
                    id: 4158,
                    title: 'KBB test',
                    userId: 2);
                await service.addPost(model);
              },
              child: Text('Add posts'),
            ),
             ElevatedButton(
              onPressed: () async {
                PostService service = PostService();
                await service.getPost(1);
              },
              child: Text('Get post'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:post_app/core/network/network_service.dart';
import 'package:post_app/models/post_model.dart';

class PostService {
  late final NetworkService _networkService;
  PostService() {
    _networkService = NetworkService();
  }

  Future<List<PostModel>?> getPosts() async {
    try {
      List<PostModel> posts = [];
      var response = await _networkService.fetchData('/posts');
      for (var e in response) {
        PostModel post = PostModel();
        posts.add(post.fromJson(e));
      }
      return posts;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<PostModel?> getPost(int id) async {
    PostModel model = PostModel();
    try {
      var response = await _networkService.fetchData('/posts/$id');
      model = model.fromJson(response);
      print(model.body);
      print(model.title);
    } catch (e) {
      print(e);
    }
    return model;
  }

  Future<void> addPost(PostModel model) async {
    try {
      var response = await _networkService.postData('/posts', model);
      print(response);
    } catch (e) {
      print(e);
    }
  }
}

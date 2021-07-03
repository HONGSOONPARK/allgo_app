import 'package:allgo_app/common/api_request.dart';
import 'package:allgo_app/model/post.dart';

class HomeProvider {
  void getHomeList(
      {Function()? beforeSend,
      Function(List<Post>? posts)? onSuccess,
      Function(dynamic? error)? onError}) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null)
        .get(
            beforeSend: () => {
                  if (beforeSend != null) {beforeSend()}
                },
            onSuccess: (data) {
              onSuccess!((data as List)
                  .map((postJson) => Post.fromJson(postJson))
                  .toList());
            },
            onError: (error) => {
                  if (error != null) {onError!(error)},
                });
  }
}

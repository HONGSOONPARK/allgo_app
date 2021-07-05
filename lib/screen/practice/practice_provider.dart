import 'package:allgo_app/common/api_request.dart';
import 'package:allgo_app/model/practice_info.dart';

class PracticeProvider {
  void getList(
      {Function()? beforeSend,
      Function(List<PracticeInfo>? posts)? onSuccess,
      Function(dynamic? error)? onError}) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null)
        .get(
            beforeSend: () => {
                  if (beforeSend != null) {beforeSend()}
                },
            onSuccess: (data) {
              onSuccess!((data as List)
                  .map((postJson) => PracticeInfo.fromJson(postJson))
                  .toList());
            },
            onError: (error) => {
                  if (error != null) {onError!(error)},
                });
  }
}

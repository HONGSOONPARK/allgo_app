import 'dart:io';

const URL_TOKEN_MERGE = "api/pushinfo/m";

String getApiUrl() {
  String url = "others";
  if (Platform.isAndroid) {
    url = "10.0.2.2:3000";
  } else if (Platform.isIOS) {
    url = "localhost:3000";
  }
  return url;
}

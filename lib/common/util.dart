import 'dart:io';

const URL_TOKEN_MERGE = "api/pushinfo/m";

String getApiUrl() {
  String url = "others";
  if (Platform.isAndroid) {
    url = "125.242.169.153:3333";
    // url = "10.0.2.2:3000";
  } else if (Platform.isIOS) {
    // url = "125.242.169.153:3333";
    url = "localhost:3000";
  }
  return url;
}

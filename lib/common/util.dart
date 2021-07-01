import 'dart:io';

const URL_TOKEN_MERGE = "api/pushinfo/m";

const URL_UPDATE_USER = "api/user/u";

String getApiUrl() {
  String url = "others";
  if (Platform.isAndroid) {
    // url = "192.168.219.101:3000";
    // url = "125.242.169.153:3333";
    url = "10.0.2.2:3000";
  } else if (Platform.isIOS) {
    // url = "125.242.169.153:3333";
    url = "localhost:3000";
  }
  return url;
}

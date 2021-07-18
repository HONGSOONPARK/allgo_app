import 'dart:io';

const URL_TOKEN_MERGE = "/api/pushinfo/m";
const URL_UPDATE_USER = "/api/user/u";
const URL_APP_INFO = "/api/appinfo/g/allgo";
const URL_AG_PORTFOLIO_ALL = "/api/portfolio/a";
const URL_AG_PORTFOLIO_TYPE_POST = "/api/portfolio/type/p";

String setRequestUrl(String api) {
  String url = "others";

  if (Platform.isAndroid) {
    // url = "192.168.219.101:3000";
    // url = "125.242.169.153:3333";
    // url = "10.0.2.2:3000";
    // url = "192.168.5.167:3000";
    // url = "172.30.1.10:3000";
  } else if (Platform.isIOS) {
    // url = "125.242.169.153:3333";
    // url = "localhost:3000";
    // url = "192.168.5.167:3000";
    // url = "192.168.219.101:3000";
    // url = "172.30.1.10:3000";
  }

  url = "192.168.219.106:3000";

  print("http://" + url + api);

  return "http://" + url + api;
}

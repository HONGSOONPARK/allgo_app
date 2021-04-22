class ResponseBase {
  final Map<dynamic, dynamic> data;
  final int code;

  ResponseBase({
    required this.data,
    required this.code,
  });

  factory ResponseBase.fromJson(Map<dynamic, dynamic> json) {
    return ResponseBase(
      data: json['data'],
      code: json['code'],
    );
  }
}

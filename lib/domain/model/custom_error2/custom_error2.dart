class CustomError2 {
  final String errorMsg;
  final String? code;
  final String? plugin;

  CustomError2({
    required this.errorMsg,
    this.code,
    this.plugin,
  });

  @override
  String toString() => 'CustomError(errorMsg: $errorMsg, code: $code, plugin: $plugin)';
}

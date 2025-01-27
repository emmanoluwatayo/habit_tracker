// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';

class CustomError extends Equatable {
  final String errorMsg;
  final String code;
  final String plugin;

  const CustomError({
    required this.errorMsg,
    required this.code,
    required this.plugin,
  });

  factory CustomError.initial() => const CustomError(
        errorMsg: "",
        code: "",
        plugin: "",
      );

  @override
  List<Object?> get props => [errorMsg, code, plugin];

  @override
  String toString() {
    return 'CustomError{errorMsg: $errorMsg, code: $code, plugin: $plugin}';
  }

  CustomError copyWith({
    String? errorMsg,
    String? code,
    String? plugin,
  }) {
    return CustomError(
      errorMsg: errorMsg ?? this.errorMsg,
      code: code ?? this.code,
      plugin: plugin ?? this.plugin,
    );
  }
}

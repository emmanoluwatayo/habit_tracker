extension ValidateSTR on String {
  String? validateStrSingleLine() {
    if (isEmpty) {
      return 'String can not be empty';
    } else if (contains('\n')) {
      return 'String can not be a multiline';
    }
    return null;
  }
}

// ignore_for_file: unused_local_variable

dynamic validateEmail(String email) {
  String emailRegex = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
  String regx =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (email.isEmpty) {
    return 'Email can not be empty';
  } else if (!RegExp(emailRegex).hasMatch(email)) {
    return 'Email is not valid';
  }
  return null;
}

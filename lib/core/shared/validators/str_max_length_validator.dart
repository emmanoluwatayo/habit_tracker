/// validate string length
dynamic validateStrMaxLength(String str, int maxLength) {
  if (str.isEmpty) {
    return 'Data can not be empty';
  }

  if (str.length > maxLength) {
    return 'Data can be greater than $maxLength';
  }
  return null;
}

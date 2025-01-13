/// validate string length
dynamic validateStrMinLength(String str, int minLength, String hint) {
  if (str.isEmpty) {
    return '$hint can not be empty';
  }

   if (str.length < minLength) {
    return '$hint can be less than $minLength';
  }
  return null;
}

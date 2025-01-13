/// validate nin number
dynamic validateNINNumber(String nin) {
  if (nin.isEmpty) {
    return 'NIN number can not be empty';
  } else if (nin.length < 11) {
    return 'NIN number is not valid';
  }
  return null;
}

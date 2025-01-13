/// Validate home address with house number
dynamic validateHomeAddress(String address) {
  if (address.isEmpty) {
    return 'Home address cannot be empty';
  }

  RegExp numberRegExp = RegExp(r'\d+');
  if (!numberRegExp.hasMatch(address)) {
    return 'Home address must contain a house number';
  }

  RegExp lettersRegExp = RegExp(r'[a-zA-Z]');
  if (!lettersRegExp.hasMatch(address)) {
    return 'Home address must contain a valid street name';
  }

  return null;
}

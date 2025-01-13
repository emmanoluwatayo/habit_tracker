/// validate phone number
dynamic validatePhoneNumber(String phone) {
  if (phone.isEmpty) {
    return 'Phone number can not be empty';
  } else if (phone.length < 11) {
    return 'Phone number is not valid';
  }

  if(!isNumber(phone)){
    return 'Phone number is not valid';
  }

  return null;
}


bool isNumber(String item) {
  bool value = true;
  item.split('').forEach((e) {
    if (!('0123456789'.contains(e))) value = false;
  });
  return value;
}
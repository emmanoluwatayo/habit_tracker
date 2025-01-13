/// validate fullname
dynamic validateFullname(String fullname) {
  if (fullname.isEmpty) {
    return 'Full Name can not be empty';
  } else if (fullname.length < 6) {
    return 'Full Name is not valid';
  }

  if (fullname.split(' ').length < 2) return 'Please enter your Full Name';

  return null;
}



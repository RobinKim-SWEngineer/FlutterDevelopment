enum InputType { fullName, phoneNo, email, password, passwrdComfirmation }

String getLabel(InputType input) {
  switch (input) {
    case InputType.fullName:
      return 'Full Name';
    case InputType.phoneNo:
      return 'Phone No';
    case InputType.email:
      return 'Email';
    case InputType.password:
      return 'Password';
    case InputType.passwrdComfirmation:
      return 'Confirm Password';
  }
}

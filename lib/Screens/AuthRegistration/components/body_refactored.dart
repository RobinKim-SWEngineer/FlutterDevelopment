import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_validation.dart';
import 'support_widgets.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _nameContorller = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  bool _isNameFilled = true;
  bool _isPhoneFilled = true;
  bool _isEmailFilled = true;
  bool _isEmailAddressValid = true;
  bool _isPasswordFilled = true;
  bool _isPasswordConfirmationFilled = true;
  bool _isPasswordConfirmationMatching = true;

  Widget _buildNameInputFrame() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: labelTextStyle,
          ),
          SizedBox(height: 5),
          Container(
            child: TextField(
              onChanged: (text) => _validateNameNotEmpty(),
              controller: _nameContorller,
              keyboardType: TextInputType.name,
              decoration: getInputDecoration(
                input: InputType.fullName,
                errorText: _getErrorText(InputType.fullName),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      );

  Widget _buildPhoneInputFrame() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Phone No',
            style: labelTextStyle,
          ),
          SizedBox(height: 5),
          Container(
            child: TextField(
              onChanged: (text) => _validatePhoneNotEmpty(),
              controller: _phoneNoController,
              keyboardType: TextInputType.phone,
              decoration: getInputDecoration(
                input: InputType.phoneNo,
                errorText: _getErrorText(InputType.phoneNo),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      );

  Widget _buildMailInputFrame() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: labelTextStyle,
          ),
          SizedBox(height: 5),
          Container(
            child: TextField(
              onChanged: (text) {
                _validateEmailNotEmpty();
                _validEmailAdress();
              },
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: getInputDecoration(
                input: InputType.email,
                errorText: _getErrorText(InputType.email),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      );

  Widget _buildPasswordInputFrame() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: labelTextStyle,
          ),
          SizedBox(height: 5),
          Container(
            child: TextField(
              onChanged: (text) => _validatePasswordNotEmpty(),
              controller: _passwordController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: getInputDecoration(
                input: InputType.password,
                errorText: _getErrorText(InputType.password),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      );

  Widget _buildPasswordConfirmationInputFrame() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Confirm Password',
            style: labelTextStyle,
          ),
          SizedBox(height: 5),
          Container(
            child: TextField(
              onChanged: (text) {
                _validatePasswordConfirmationNotEmpty();
                _validatePasswordMatching();
              },
              controller: _passwordConfirmationController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: getInputDecoration(
                input: InputType.passwrdComfirmation,
                errorText: _getErrorText(InputType.passwrdComfirmation),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      );

  Widget _buildRegistrationButton() => Container(
        width: double.infinity,
        child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(10),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
            child: Text(
              'REGISTER',
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 20,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              _validateAllInputs();
            }),
      );

  _validateAllInputs() {
    _validateNameNotEmpty();
    _validatePhoneNotEmpty();
    _validateEmailNotEmpty();
    _validatePasswordNotEmpty();
    _validatePasswordConfirmationNotEmpty();
    _validatePasswordMatching();
  }

  void _validateNameNotEmpty() =>
      setState(() => _isNameFilled = _nameContorller.text == '' ? false : true);

  void _validatePhoneNotEmpty() => setState(
      () => _isPhoneFilled = _phoneNoController.text == '' ? false : true);

  void _validateEmailNotEmpty() => setState(
      () => _isEmailFilled = _emailController.text == '' ? false : true);

  void _validEmailAdress() => setState(() => _isEmailAddressValid =
      _emailController.text.contains('@') ? true : false);

  void _validatePasswordNotEmpty() => setState(
      () => _isPasswordFilled = _passwordController.text == '' ? false : true);

  void _validatePasswordConfirmationNotEmpty() =>
      setState(() => _isPasswordConfirmationFilled =
          _passwordConfirmationController.text == '' ? false : true);

  void _validatePasswordMatching() =>
      setState(() => _isPasswordConfirmationMatching =
          _passwordController.text == _passwordConfirmationController.text
              ? true
              : false);

  String? _getErrorText(InputType input) {
    switch (input) {
      case InputType.fullName:
        return _isNameFilled ? null : 'Name is required';
      case InputType.phoneNo:
        return _isPhoneFilled ? null : 'Phone number is required';
      case InputType.email:
        if (_isEmailFilled) {
          if (_isEmailAddressValid) {
            return null;
          } else {
            return 'Email address is not valid format';
          }
        } else {
          return 'Enter your Email';
        }
      case InputType.password:
        return _isPasswordFilled ? null : 'Email is required';
      case InputType.passwrdComfirmation:
        if (_isPasswordConfirmationFilled) {
          if (_isPasswordConfirmationMatching) {
            return null;
          } else {
            return 'Confirmation password is not matching';
          }
        } else {
          return 'Enter password for confirmation';
        }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _nameContorller.dispose();
    _phoneNoController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(40, 45, 40, 0),
            child: Column(
              children: [
                Header('Sign Up'),
                SizedBox(
                  height: 5,
                ),
                _buildNameInputFrame(),
                SizedBox(
                  height: 5,
                ),
                _buildPhoneInputFrame(),
                SizedBox(
                  height: 5,
                ),
                _buildMailInputFrame(),
                SizedBox(
                  height: 5,
                ),
                _buildPasswordInputFrame(),
                SizedBox(
                  height: 5,
                ),
                _buildPasswordConfirmationInputFrame(),
                SizedBox(
                  height: 10,
                ),
                _buildRegistrationButton(),
                SizedBox(
                  height: 10,
                ),
                SignInTab(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

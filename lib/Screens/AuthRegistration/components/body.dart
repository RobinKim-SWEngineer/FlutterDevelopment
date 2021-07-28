// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'input_validation.dart';
// import 'support_widgets.dart';

// class Body extends StatefulWidget {
//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   GlobalKey<FormState> formKey = GlobalKey();
//   String? password = '';
//   String? passwordConfirmation = '';

//   Widget _buildNameInputFrame() => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Full Name',
//             style: labelTextStyle,
//           ),
//           SizedBox(height: 5),
//           Container(
//             child: TextFormField(
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               validator: _getValidationLogic(InputType.fullName),
//               keyboardType: TextInputType.name,
//               decoration: getInputDecoration(InputType.fullName),
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           )
//         ],
//       );

//   Widget _buildPhoneInputFrame() => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Phone No',
//             style: labelTextStyle,
//           ),
//           SizedBox(height: 5),
//           Container(
//             child: TextFormField(
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               validator: _getValidationLogic(InputType.phoneNo),
//               keyboardType: TextInputType.phone,
//               decoration: getInputDecoration(InputType.phoneNo),
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           )
//         ],
//       );

//   Widget _buildMailInputFrame() => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Email',
//             style: labelTextStyle,
//           ),
//           SizedBox(height: 5),
//           Container(
//             child: TextFormField(
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               validator: _getValidationLogic(InputType.email),
//               keyboardType: TextInputType.emailAddress,
//               decoration: getInputDecoration(InputType.email),
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           )
//         ],
//       );

//   Widget _buildPasswordInputFrame() => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Password',
//             style: labelTextStyle,
//           ),
//           SizedBox(height: 5),
//           Container(
//             child: TextFormField(
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               validator: _getValidationLogic(InputType.password),
//               obscureText: true,
//               onSaved: (value) => password = value,
//               keyboardType: TextInputType.visiblePassword,
//               decoration: getInputDecoration(InputType.password),
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           )
//         ],
//       );

//   Widget _buildPasswordConfirmationInputFrame() => Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Confirm Password',
//             style: labelTextStyle,
//           ),
//           SizedBox(height: 5),
//           Container(
//             child: TextFormField(
//               onChanged: (text) => formKey.currentState!.save(),
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               validator: _getValidationLogic(InputType.passwrdComfirmation),
//               obscureText: true,
//               onSaved: (value) => passwordConfirmation = value,
//               keyboardType: TextInputType.visiblePassword,
//               decoration: getInputDecoration(InputType.passwrdComfirmation),
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           )
//         ],
//       );

//   _getValidationLogic(InputType input) {
//     switch (input) {
//       case InputType.fullName:
//         return (value) {
//           if (value == '') return 'Oops, please fill out your name!';
//         };
//       case InputType.phoneNo:
//         return (value) {
//           if (value == '') return 'Oops, please fill out your phone!';
//         };
//       case InputType.email:
//         return (value) {
//           if (value == '')
//             return 'Oops, please fill out your email!';
//           else if (!value!.contains('@')) return 'Invalid e-mail address';
//         };
//       case InputType.password:
//         return (value) {
//           if (value == '') return 'Oops, please fill out your password!';
//         };
//       case InputType.passwrdComfirmation:
//         return (value) {
//           if (value == '')
//             return 'Oops, please fill out your password!';
//           else if (password != passwordConfirmation)
//             return 'Password is not matching';
//         };
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formKey,
//       child: Stack(
//         children: [
//           Background(),
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             child: SingleChildScrollView(
//               padding: EdgeInsets.fromLTRB(40, 45, 40, 0),
//               child: Column(
//                 children: [
//                   Header('Sign Up'),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   _buildNameInputFrame(),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   _buildPhoneInputFrame(),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   _buildMailInputFrame(),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   _buildPasswordInputFrame(),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   _buildPasswordConfirmationInputFrame(),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   RegistrationButton(formKey),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   SignInTab(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

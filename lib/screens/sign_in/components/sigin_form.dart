import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../theme/texts_style.dart';

class SignInForm extends StatefulWidget {
  final GlobalKey<FormState> formkey;
  const SignInForm({Key? key, required this.formkey}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool emailValid = false;
  bool passwordHidden = true;
  String? email;
  String? password;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: const Duration(milliseconds: 1000),
      from: 30,
      duration: const Duration(milliseconds: 800),
      child: Form(
        key: widget.formkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                RegExp rg = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                if (value!.isEmpty) {
                  return Constants.kEmailNullError;
                } else if (!rg.hasMatch(value)) {
                  return Constants.kInvalidEmailError;
                }
                return null;
              },
              onSaved: (value) => email = value,
              textInputAction: TextInputAction.next,
              style: AppTextStyle.subNBodyBold.copyWith(fontSize: 16),
              keyboardType: TextInputType.emailAddress,
              cursorColor: Constants.kPrimaryColor,
              onChanged: (value) {
                if (Constants.emailValidatorRegExp.hasMatch(value)) {
                  emailValid = true;
                } else {
                  emailValid = false;
                }
                setState(() {});
              },
              decoration: InputDecoration(
                label: Text(
                  'Email',
                  style: AppTextStyle.subNBodyReg
                      .copyWith(fontSize: 16, color: Colors.black38),
                ),
                suffixIcon: emailValid
                    ? const Icon(
                        Icons.done,
                        color: Constants.kPrimaryColor,
                      )
                    : null,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            TextFormField(
              style: AppTextStyle.subNBodyBold.copyWith(fontSize: 16),
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Constants.kPrimaryColor,
              onSaved: (newValue) => password = newValue,
              obscureText: passwordHidden,
              decoration: InputDecoration(
                label: Text(
                  'Password',
                  style: AppTextStyle.subNBodyReg
                      .copyWith(fontSize: 16, color: Colors.black38),
                ),
                suffixIcon: IconButton(
                  onPressed: () =>
                      setState(() => passwordHidden = !passwordHidden),
                  icon: Icon(
                    passwordHidden ? Icons.visibility : Icons.visibility_off,
                    color: Constants.kPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

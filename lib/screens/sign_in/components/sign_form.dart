import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kharidari/style/color.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../constants.dart';
import '../../../helper/keyboard.dart';
import '../../forgot_password/forgot_password_screen.dart';
import '../../login_success/login_success_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});
  @override
  _SignFormState createState() => _SignFormState();
}
class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (emailValidatorRegExp.hasMatch(value)) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                }
              }
            },
            validator: (value) {
              if (value!.isEmpty) {
                showError(kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                showError(kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration:  InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.primary, width: 1.8),
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: const CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
              ),
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => password = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (value.length >= 8) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                }
              }
            },
            validator: (value) {
              if (value!.isEmpty) {
                showError(kPassNullError);
                return "";
              } else if (value.length < 8) {
                showError(kShortPassError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.primary, width: 1.8),
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: "Enter your password",
              // hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: const CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
              ),
            ),
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}

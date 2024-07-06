import 'package:cafiil_job_test/core/widgets/custom_button.dart';
import 'package:cafiil_job_test/core/widgets/custom_text_field.dart';
import 'package:cafiil_job_test/main.dart';
import 'package:flutter/material.dart';

class PasswordRegistrationForm extends StatefulWidget {
  const PasswordRegistrationForm({
    super.key,
  });

  @override
  State<PasswordRegistrationForm> createState() =>
      _PasswordRegistrationFormState();
}

class _PasswordRegistrationFormState extends State<PasswordRegistrationForm> {
  String? password;
  String? confirmPassword;
  GlobalKey<FormState> formKey1 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey1,
      child: Column(
        children: [
          const SizedBox(height: 8),
          CustomTextField(
            text: "Enter your password",
            isPassword: true,
            onChanged: (data) {
              password = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter a valid password';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          CustomTextField(
            text: "Confirm your password",
            isPassword: true,
            onChanged: (data) {
              confirmPassword = data;
            },
            validator: (value) {
              if (value != password) {
                return 'your password not match';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              widget: const SizedBox(),
              text: 'Register',
              onPressed: () {
                if (formKey1.currentState!.validate()) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const HomeView();
                  }));
                }
              }),
        ],
      ),
    );
  }
}

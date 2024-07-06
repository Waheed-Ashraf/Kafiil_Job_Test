import 'package:cafiil_job_test/core/utils/app_styles.dart';
import 'package:cafiil_job_test/core/utils/constent_colors.dart';
import 'package:cafiil_job_test/core/widgets/custom_button.dart';
import 'package:cafiil_job_test/core/widgets/custom_text_field.dart';
import 'package:cafiil_job_test/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? email, password;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          CustomTextField(
            text: 'Enter the user name',
            prefixIcon: FontAwesomeIcons.user,
            onChanged: (data) {
              email = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'you have to enter your Email';
              } else if (!value.contains('@')) {
                return "your Email must contains '@'";
              } else if (!value.contains('.')) {
                return "your Email must contains '.com'";
              }

              return null;
            },
          ),
          const SizedBox(height: 8),
          CustomTextField(
            text: "Enter your password",
            prefixIcon: FontAwesomeIcons.lock,
            isPassword: true,
            onChanged: (data) {
              password = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'you have to enter your password';
              }

              return null;
            },
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: Text('Forgot your password ?',
                    style:
                        AppStyles.styleRegular12.copyWith(color: primaryColor)),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 40,
            child: CustomButton(
                widget: const SizedBox(),
                text: 'sign in',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomeView();
                    }));
                  }
                }),
          ),
        ],
      ),
    );
  }
}

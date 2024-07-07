import 'package:cafiil_job_test/core/utils/app_styles.dart';
import 'package:cafiil_job_test/core/utils/constent_colors.dart';
import 'package:cafiil_job_test/core/widgets/custom_button.dart';
import 'package:cafiil_job_test/core/widgets/custom_text_field.dart';
import 'package:cafiil_job_test/modules/auth/register_view/widgets/check_box_widget.dart';
import 'package:cafiil_job_test/modules/who_am_i/view/who_am_i.dart';
import 'package:flutter/material.dart';

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
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Email Address',
              style: AppStyles.styleMedium12,
            ),
          ),
          const SizedBox(height: 8),
          CustomTextField(
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
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
              style: AppStyles.styleMedium12,
            ),
          ),
          const SizedBox(height: 8),
          CustomTextField(
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
          Padding(
            padding: const EdgeInsets.only(top: 9, bottom: 31),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CheckboxWidget(),
                GestureDetector(
                  onTap: () {},
                  child: Text('Forgot your password ?',
                      style: AppStyles.styleMedium12),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 56,
            child: CustomButton(
                widget: const SizedBox(),
                text: 'sign in',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const WhoAmIView();
                    }));
                  }
                }),
          ),
        ],
      ),
    );
  }
}

import 'package:cafiil_job_test/core/widgets/custom_button.dart';
import 'package:cafiil_job_test/core/widgets/custom_text_field.dart';
import 'package:cafiil_job_test/modules/auth/register_view/widgets/check_box_widget.dart';
import 'package:cafiil_job_test/modules/auth/register_view/widgets/register_view2.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String? email;
  String? fullName;
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
            text: "Enter first name",
            onChanged: (data) {
              fullName = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'You have to fill this field';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          CustomTextField(
            text: "Enter another name",
            onChanged: (data) {
              fullName = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'You have to fill this field';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          CustomTextField(
            text: "Enter your email address",
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
          const CheckboxWidget(),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 40,
            child: CustomButton(
                widget: const SizedBox(),
                text: 'Continue',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const RegisterView2();
                    }));
                  }
                }),
          )
        ],
      ),
    );
  }
}

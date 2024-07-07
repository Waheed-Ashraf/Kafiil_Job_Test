import 'package:cafiil_job_test/core/utils/app_styles.dart';
import 'package:cafiil_job_test/core/utils/constent_colors.dart';
import 'package:cafiil_job_test/modules/auth/register_view/register_view.dart';
import 'package:flutter/material.dart';

class CreateAccountWidget extends StatelessWidget {
  const CreateAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account ? ", style: AppStyles.styleMedium14),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const RegisterView();
            }));
          },
          child: Text("Register",
              style: AppStyles.styleSemiBold14.copyWith(color: primaryColor)),
        ),
      ],
    );
  }
}

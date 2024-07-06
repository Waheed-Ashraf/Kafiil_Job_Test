import 'package:cafiil_job_test/core/utils/app_styles.dart';
import 'package:cafiil_job_test/modules/auth/register_view/widgets/password_registration_form.dart';
import 'package:flutter/material.dart';

class RegisterView2 extends StatelessWidget {
  const RegisterView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Create an account',
                style: AppStyles.styleSemiBold12,
              ),
              const SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Passowrd must be at least 8 characters long\n    includes letters, numbers and symbols.',
                  style: AppStyles.styleRegular12,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const PasswordRegistrationForm(),
            ],
          ),
        ),
      ),
    );
  }
}

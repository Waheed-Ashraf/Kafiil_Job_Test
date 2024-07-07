import 'package:cafiil_job_test/core/utils/assets_data.dart';

import 'package:cafiil_job_test/modules/auth/login_view/widgets/create_account_widget.dart';
import 'package:cafiil_job_test/modules/auth/login_view/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Center(child: SvgPicture.asset(Assets.imagesLoginCuate)),
            const SizedBox(
              height: 20,
            ),
            const LoginForm(),
            const SizedBox(
              height: 24,
            ),
            const CreateAccountWidget(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

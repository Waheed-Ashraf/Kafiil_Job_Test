import 'package:cafiil_job_test/core/utils/app_styles.dart';
import 'package:cafiil_job_test/core/utils/assets_data.dart';
import 'package:cafiil_job_test/core/utils/constent_colors.dart';
import 'package:cafiil_job_test/core/widgets/custom_button.dart';
import 'package:cafiil_job_test/modules/auth/login_view/widgets/create_account_widget.dart';
import 'package:cafiil_job_test/modules/auth/login_view/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              AssetsData.splashScreenImg,
              fit: BoxFit.contain,
              width: 180,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Welcome Back!',
              style: AppStyles.styleSemiBold12,
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Use credential to log into your account',
                style: AppStyles.styleRegular12.copyWith(color: primaryColor),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const LoginForm(),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Text("OR"),
                ),
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              widget: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  AssetsData.googleIcon,
                  width: 20,
                ),
              ),
              text: "Continuo with Google",
              onPressed: () {},
              withBorder: true,
              color: Colors.white,
            ),
            CustomButton(
              widget: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(FontAwesomeIcons.apple)),
              text: "Continuo with Apple  ",
              onPressed: () {},
              withBorder: true,
              color: Colors.white,
            ),
            const SizedBox(
              height: 16,
            ),
            const CreateAccountWidget(),
          ],
        ),
      ),
    );
  }
}

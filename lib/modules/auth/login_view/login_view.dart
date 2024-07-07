import 'package:cafiil_job_test/core/utils/app_styles.dart';
import 'package:cafiil_job_test/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: Center(child: SvgPicture.asset(Assets.imagesArrowBack)),
        title: Text(
          "Account Login",
          style: AppStyles.styleSemiBold18,
        ),
      ),
      body: const SafeArea(child: LoginViewBody()),
    );
  }
}

import 'package:cafiil_job_test/core/utils/app_styles.dart';
import 'package:cafiil_job_test/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRegAppBar extends StatelessWidget {
  final String title;
  const CustomRegAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(child: SvgPicture.asset(Assets.imagesArrowBack)),
        const SizedBox(
          width: 12,
        ),
        Text(
          title,
          style: AppStyles.styleSemiBold18,
        ),
      ],
    );
  }
}

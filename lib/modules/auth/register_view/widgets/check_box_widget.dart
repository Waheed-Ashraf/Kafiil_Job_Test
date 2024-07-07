import 'package:cafiil_job_test/core/utils/app_styles.dart';
import 'package:cafiil_job_test/core/utils/constent_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24.0,
          width: 24.0,
          child: Checkbox(
            checkColor: Colors.white,
            activeColor: primaryColor,
            side: const BorderSide(color: primaryColor, width: 1),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          'Remember Me.',
          style: AppStyles.styleMedium12,
        )
      ],
    );
  }
}

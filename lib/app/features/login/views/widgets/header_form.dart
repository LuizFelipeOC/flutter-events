import 'package:flutter/material.dart';

import '../../../../core/constants/app_images.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.dashStars,
          width: MediaQuery.of(context).size.width * .45,
        ),
        const SizedBox(height: 5),
        Text(
          'Bem-vindo de volta Fluttereiro',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade500,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

import 'package:flutter/widgets.dart';

import '../../../../../core/constants/app_images.dart';

class NetWorkBannerEvents extends StatelessWidget {
  const NetWorkBannerEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        AppImages.mockCard,
        height: 130,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}

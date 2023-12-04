import 'package:flutter/material.dart';

import '../../../../core/constants/app_images.dart';

class CardEvents extends StatelessWidget {
  const CardEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AppImages.mockCard,
              height: 130,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 10,
            right: 20,
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  '1234',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Flutter Foward',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Acontecerá em 12/08/2024',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

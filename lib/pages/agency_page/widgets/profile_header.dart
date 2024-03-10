import 'package:design_2/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PrfileHeader extends StatelessWidget {
  const PrfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            'assets/images/profile.png',
          ),
        ),
        SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hamza1122',
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'ID: 78952',
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 8,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.copy,
                  color: AppColors.darkGrey,
                  size: 10,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

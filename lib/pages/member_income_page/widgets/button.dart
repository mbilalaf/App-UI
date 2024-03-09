import 'package:design_2/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColors.darkPurpule.withOpacity(0.95),
          AppColors.primaryColor,
        ]),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Center(
        child: Text(
          'Inquire',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

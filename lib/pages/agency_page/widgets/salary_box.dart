import 'package:flutter/material.dart';

class SalaryBox extends StatelessWidget {
  const SalaryBox({super.key, required this.title, required this.salary});

  final String title;
  final String salary;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 82,
        width: MediaQuery.sizeOf(context).width / 2,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(),
          border: Border.all(
            color: Colors.white.withOpacity(0.05),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              salary,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:design_2/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'salary_box.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
        child: Column(
          children: [
            const Text(
              'Balance: 313.00 USD',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 168,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.white.withOpacity(0.05),
                  width: 2,
                ),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      SalaryBox(
                        title: 'Advance Salary',
                        salary: '313.00 USD',
                      ),
                      SalaryBox(
                        title: 'Estimated Salary',
                        salary: '313.00 USd',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SalaryBox(
                        title: 'Gama Members',
                        salary: '10k',
                      ),
                      SalaryBox(
                        title: 'Monthly receiving',
                        salary: '100k',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

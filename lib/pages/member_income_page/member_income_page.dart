import 'package:design_2/models/history_model.dart';
import 'package:design_2/pages/member_income_page/widgets/select_time.dart';
import 'package:design_2/utils/app_colors.dart';
import 'package:design_2/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

import 'widgets/button.dart';

class MemberIncomePage extends StatelessWidget {
  const MemberIncomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPurpule,
      appBar: AppBar(
        backgroundColor: AppColors.darkPurpule,
        centerTitle: true,
        title: const Text(
          'Member Income',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: const BackArrow(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
          child: Column(
            children: [
              // Filter Container
              Container(
                height: 239,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19, vertical: 24),
                  child: Column(
                    children: [
                      // Select Time
                      SelectTime(
                          text: 'Select Start Time', time: '10 May 2024'),
                      SizedBox(height: 20),
                      SelectTime(text: 'Select End Time', time: '10 May 2024'),
                      SizedBox(height: 30),

                      // Button
                      Button(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // History
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: GridView.builder(
                  itemCount: historyList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    Color itemColor = index < 4
                        ? AppColors.primaryColor.withOpacity(0.4)
                        : AppColors.primaryColor.withOpacity(0.15);
                    return Container(
                      decoration: BoxDecoration(
                        color: itemColor,
                        border: Border.all(
                          color: Colors.white.withOpacity(0.05),
                          width: 1.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          historyList[index].name,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

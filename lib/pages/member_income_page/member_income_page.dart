import 'package:flutter/material.dart';
import 'package:design_2/models/history_model.dart';
import 'package:design_2/pages/member_income_page/widgets/select_time.dart';
import 'package:design_2/utils/app_colors.dart';
import 'package:design_2/widgets/back_arrow.dart';

import 'widgets/button.dart';

class MemberIncomePage extends StatelessWidget {
  const MemberIncomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Member Income',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.darkGrey,
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
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 24),
                  child: Column(
                    children: [
                      // Start Time
                      SelectTime(
                        text: 'Select Start Time',
                        onDateSelected: (DateTime selectedDate) {},
                      ),
                      const SizedBox(height: 20),
                      // End Time
                      SelectTime(
                        text: 'Select End Time',
                        onDateSelected: (DateTime selectedDate) {
                          // Handle the selected end time here
                        },
                      ),
                      const SizedBox(height: 30),

                      // Button
                      const Button(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // History
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: GridView.builder(
                  itemCount: historyList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    Color itemColor = index < 4
                        ? AppColors.primaryColor
                        : AppColors.lightGrey;
                    Color textColor =
                        index < 4 ? Colors.white : AppColors.darkGrey;
                    return Container(
                      decoration: BoxDecoration(
                        color: itemColor,
                        border: Border.all(
                          color: AppColors.darkGrey.withOpacity(0.05),
                          width: 1.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          historyList[index].name,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: textColor,
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

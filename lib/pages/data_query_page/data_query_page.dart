import 'package:design_2/models/history_model.dart';
import 'package:design_2/pages/member_income_page/widgets/select_time.dart';
import 'package:design_2/utils/app_colors.dart';
import 'package:design_2/widgets/back_arrow.dart';
import 'package:flutter/material.dart';
import '../member_income_page/widgets/button.dart';

class DataQueryPage extends StatelessWidget {
  const DataQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Data Query',
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
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
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

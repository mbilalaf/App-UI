import 'package:design_2/pages/member_income_page/member_income_page.dart';
import 'package:design_2/utils/app_colors.dart';
import 'package:design_2/widgets/back_arrow.dart';
import 'package:flutter/material.dart';
import 'widgets/balance_card.dart';
import 'widgets/profile_header.dart';
import 'widgets/setting_tile.dart';

class AgencyPage extends StatelessWidget {
  const AgencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPurpule,
      appBar: AppBar(
        backgroundColor: AppColors.darkPurpule,
        centerTitle: true,
        title: const Text(
          'Agency',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: const BackArrow(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
        child: Column(
          children: [
            // Profile Header
            const PrfileHeader(),
            const SizedBox(height: 22),

            // Balance Card
            const BalanceCard(),
            const SizedBox(height: 16),

            // Setting ListTiles
            SettingTile(
              title: 'Member income',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MemberIncomePage(),
                    ));
              },
            ),
            const SizedBox(height: 12),
            const SettingTile(title: 'Member Invites'),
            const SizedBox(height: 12),
            const SettingTile(title: 'Data Query'),
          ],
        ),
      ),
    );
  }
}

import 'package:design_2/pages/data_query_page/data_query_page.dart';
import 'package:design_2/pages/member_income_page/member_income_page.dart';
import 'package:design_2/pages/member_invites_page/member_invites_page.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'My Agency',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
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
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            SettingTile(
              title: 'Member Invites',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MemberInvitesPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            SettingTile(
              title: 'Data Query',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DataQueryPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

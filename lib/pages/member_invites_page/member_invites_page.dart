import 'package:design_2/models/invite_member_model.dart';
import 'package:design_2/pages/member_invites_page/widgets/custom_search_bar.dart';
import 'package:design_2/pages/member_invites_page/widgets/invitation_tile.dart';
import 'package:design_2/utils/app_colors.dart';
import 'package:design_2/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

class MemberInvitesPage extends StatelessWidget {
  const MemberInvitesPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isJoined = true;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Member Invites',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.darkGrey,
          ),
        ),
        leading: const BackArrow(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 30),
        child: Column(
          children: [
            // SearchBar
            CustomSearchBar(),
            SizedBox(height: 20),

            // Invitation Tiles
            InvitationTile(),
          ],
        ),
      ),
    );
  }
}

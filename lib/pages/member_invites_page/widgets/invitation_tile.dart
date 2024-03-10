import 'package:design_2/models/invite_member_model.dart';
import 'package:design_2/utils/app_colors.dart';
import 'package:flutter/material.dart';

class InvitationTile extends StatelessWidget {
  const InvitationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: inviteMemberList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              height: 76,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // Profile Picture
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: AppColors.darkGrey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: AppColors.darkGrey.withOpacity(0.15),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                inviteMemberList[index].img,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        // Name & ID
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              inviteMemberList[index].name,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.darkGrey,
                              ),
                            ),
                            Text(
                              'ID: ${inviteMemberList[index].id}',
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: AppColors.darkGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    inviteMemberList[index].isJoined ?? true
                        ? const Text(
                            'Joined',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                          )
                        : Container(
                            height: 30,
                            width: MediaQuery.sizeOf(context).width * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.darkPurpule.withOpacity(0.95),
                                  AppColors.primaryColor,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                'Invite',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

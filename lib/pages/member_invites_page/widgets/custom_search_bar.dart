import 'package:design_2/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search By ID or Nick Name',
                    hintStyle: const TextStyle(fontSize: 12),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.darkGrey.withOpacity(0.8),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: MediaQuery.sizeOf(context).width / 4.5,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Center(
            child: Text(
              'Search Now',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

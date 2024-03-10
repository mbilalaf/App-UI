// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:design_2/utils/app_colors.dart';

class SelectTime extends StatefulWidget {
  const SelectTime({
    Key? key,
    required this.text,
    this.initialDate,
    required this.onDateSelected,
  }) : super(key: key);

  final String text;
  final DateTime? initialDate;
  final Function(DateTime) onDateSelected; // Define the named parameter here

  @override
  _SelectTimeState createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate ?? DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        widget.onDateSelected(_selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        InkWell(
          onTap: () => _selectDate(context),
          child: Container(
            height: 40,
            width: 160,
            decoration: BoxDecoration(
              color: AppColors.darkPurpule.withOpacity(0.15),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 11,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Image(
                        height: 16,
                        width: 16,
                        image: AssetImage(
                          'assets/icons/calender.png',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '${_selectedDate.day} ${_selectedDate.month} ${_selectedDate.year}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

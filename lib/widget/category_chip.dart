import 'package:flutter/material.dart';
import 'package:homework2/assets/constants.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  CategoryChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Chip(
          label: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : AppColor100,
              fontWeight: FontWeight.w900
            ),
          ),
          backgroundColor: isSelected ? Colors.orange : Colors.transparent,
          shape: StadiumBorder(),
          elevation: 0,
          side: BorderSide.none,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sports_ui/utils/my_colors.dart';

class ActivityTile extends StatefulWidget {
  const ActivityTile({super.key});

  @override
  State<ActivityTile> createState() => _ActivityTileState();
}

class _ActivityTileState extends State<ActivityTile> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          child: AnimatedContainer(
            height: 46,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: selectedIndex == 0
                    ? LinearGradient(colors: [
                        AppColors.selectedGradient1,
                        AppColors.selectedGradient2
                      ])
                    : const LinearGradient(
                        colors: [Colors.transparent, Colors.transparent])),
            duration: const Duration(milliseconds: 300),
            child: Center(
              child: Text(
                "My Profile",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.highlightedTextColor),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          child: AnimatedContainer(
            height: 46,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: selectedIndex == 1
                    ? LinearGradient(colors: [
                        AppColors.selectedGradient1,
                        AppColors.selectedGradient2
                      ])
                    : const LinearGradient(
                        colors: [Colors.transparent, Colors.transparent])),
            duration: const Duration(milliseconds: 300),
            child: Center(
              child: Text(
                "Activity",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.highlightedTextColor),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
          },
          child: AnimatedContainer(
            height: 46,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                gradient: selectedIndex == 2
                    ? LinearGradient(colors: [
                        AppColors.selectedGradient1,
                        AppColors.selectedGradient2
                      ])
                    : const LinearGradient(
                        colors: [Colors.transparent, Colors.transparent])),
            duration: const Duration(milliseconds: 300),
            child: Center(
              child: Text(
                "Settings",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.highlightedTextColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

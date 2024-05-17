import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sports_ui/utils/my_colors.dart';
import 'package:sports_ui/utils/my_images.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 250,
            width: 260,
            decoration: BoxDecoration(
                color: AppColors.secondaryThemeColor,
                borderRadius: BorderRadius.circular(57)),
          ),
          BounceInDown(
            child: Center(
              child: Image.asset(
                MyAssets.signInPlayer,
                height: 330,
                width: 220,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

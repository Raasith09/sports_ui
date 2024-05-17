import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sports_ui/utils/my_colors.dart';
import 'package:sports_ui/utils/my_images.dart';
import 'package:sports_ui/utils/sized_box.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Stack(
        children: [
          FadeInUp(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150,
                padding: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.selectedGradient3,
                          AppColors.highlightedTextColor
                        ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.kH,
                    Text(
                      "The most awaited\n game on 2024",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.selectedGradient4),
                    ),
                    15.kH,
                    const Text(
                      "Starts form\n14 Jun, 2024",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: BounceInDown(
              child: Image.asset(
                MyAssets.splashImage,
                height: 175,
                width: 150,
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sports_ui/model/sports_model.dart';
import 'package:sports_ui/utils/my_colors.dart';

class RowSports extends StatefulWidget {
  const RowSports({super.key});

  @override
  State<RowSports> createState() => _RowSportsState();
}

class _RowSportsState extends State<RowSports> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sportModelList.length,
        itemBuilder: (context, index) {
          bool isSelected = selectedIndex == index;
          return FadeInRight(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 108,
                height: 100,
                margin: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: isSelected
                          ? LinearGradient(colors: [
                              AppColors.selectedGradient1,
                              AppColors.selectedGradient2
                            ])
                          : LinearGradient(colors: [
                              AppColors.secondaryThemeColor,
                              AppColors.secondaryThemeColor
                            ])),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Image.asset(
                        sportModelList[index].image,
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        sportModelList[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

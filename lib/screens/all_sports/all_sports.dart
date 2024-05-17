import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sports_ui/model/sports_model.dart';
import 'package:sports_ui/utils/my_colors.dart';
import 'package:sports_ui/utils/sized_box.dart';
import 'package:sports_ui/widgets/main_button.dart';

class AllSports extends StatefulWidget {
  const AllSports({super.key});

  @override
  State<AllSports> createState() => _AllSportsState();
}

class _AllSportsState extends State<AllSports> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            30.kH,
            FadeInUp(
              child: RichText(
                text: TextSpan(
                    text: "What sport do\nyou interest?",
                    style: TextStyle(
                        fontSize: 40,
                        color: AppColors.highlightedTextColor,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            20.kH,
            FadeInUp(
              child: RichText(
                text: TextSpan(
                    text: "You can choose more than one.",
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.unhighlightedTextColor,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            FadeInUp(
              child: SizedBox(
                height: 300,
                child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.7),
                  itemCount: sportModelList.length,
                  itemBuilder: (context, index) {
                    bool isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Column(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: isSelected
                                    ? LinearGradient(colors: [
                                        AppColors.selectedGradient1,
                                        AppColors.selectedGradient2
                                      ])
                                    : const LinearGradient(colors: [
                                        Colors.transparent,
                                        Colors.transparent
                                      ])),
                            height: 90,
                            child: Image.asset(
                              sportModelList[index].image,
                            ),
                          ),
                          Text(
                            sportModelList[index].name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            60.kH,
            FadeInUp(
              child: BouncingButton(
                  onTap: () {
                    context.pushReplacement("/home");
                  },
                  text: "Continue"),
            ),
            25.kH,
            const Center(
              child: Text("Skip",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
            30.kH,
          ],
        ),
      ),
    );
  }
}

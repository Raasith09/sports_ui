import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sports_ui/utils/my_colors.dart';
import 'package:sports_ui/utils/sized_box.dart';
import 'package:sports_ui/widgets/bottomsheet_content.dart';
import 'package:sports_ui/widgets/main_button.dart';
import 'package:sports_ui/widgets/player_card.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              30.kH,
              const PlayerCard(),
              50.kH,
              FadeInRight(
                child: RichText(
                  text: TextSpan(
                      text: "Discover all \nabout sport.",
                      style: TextStyle(
                          fontSize: 40,
                          color: AppColors.highlightedTextColor,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              20.kH,
              FadeInRight(
                child: RichText(
                  text: TextSpan(
                      text:
                          "Football is a game of mistakes.\nWhoever makes the fewest\nmistakes wins.",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.unhighlightedTextColor,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              50.kH,
              FadeInRight(
                child: BouncingButton(
                    onTap: () => showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(42)),
                        ),
                        builder: (BuildContext context) =>
                            const BottomSheetContent()),
                    text: "Sign In"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

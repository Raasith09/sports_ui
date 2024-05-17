import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sports_ui/utils/my_colors.dart';
import 'package:sports_ui/utils/sized_box.dart';
import 'package:sports_ui/widgets/main_button.dart';
import 'package:sports_ui/widgets/search_input.dart';
import 'custom_checkbox.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key});

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          top: 12,
          right: 20,
          left: 25,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Welcome",
                style: TextStyle(
                    fontSize: 28,
                    color: AppColors.highlightedTextColor,
                    fontWeight: FontWeight.w600)),
            20.kH,
            SearchInput(
              textController: email,
              hintText: "Email",
              myIcons: Icons.email,
            ),
            20.kH,
            SearchInput(
              textController: password,
              hintText: "Password",
              myIcons: Icons.password,
            ),
            20.kH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomCheckbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    10.kW,
                    Text(
                      "Remember me",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.unhighlightedTextColor),
                    )
                  ],
                ),
                const Text(
                  "Forgot Password?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue),
                )
              ],
            ),
            30.kH,
            BouncingButton(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) =>
                          const Center(child: CircularProgressIndicator()));
                  Future.delayed(const Duration(seconds: 2), () {
                    context.pop();
                    context.pushReplacement("/allsports");
                  });
                },
                text: "Sign In"),
            30.kH,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account? ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.highlightedTextColor),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.highlightedButtonColor),
                )
              ],
            ),
            40.kH,
          ],
        ),
      ),
    );
  }
}

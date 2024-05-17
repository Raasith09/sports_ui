import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sports_ui/model/profiledata_model.dart';
import 'package:sports_ui/utils/my_colors.dart';
import 'package:sports_ui/utils/sized_box.dart';
import 'package:sports_ui/widgets/activity_tile.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: FadeInUp(
          child: Column(
            children: [
              56.kH,
              Center(
                child: SizedBox(
                  height: 105,
                  width: 105,
                  child: Stack(
                    children: [
                      Container(
                        height: 105,
                        width: 105,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Image.asset(
                          "assets/images/Cristiano Ronaldo.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(colors: [
                                    AppColors.selectedGradient1,
                                    AppColors.selectedGradient2
                                  ])),
                              child: const Icon(
                                Icons.edit,
                                size: 18,
                              )))
                    ],
                  ),
                ),
              ),
              25.kH,
              const Center(
                child: Text(
                  "Mohamed Raasith",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              10.kH,
              Center(
                child: Text(
                  "Hala Madrid...🤍🔥",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.unhighlightedTextColor),
                ),
              ),
              15.kH,
              const ActivityTile(),
              ListView.builder(
                  itemCount: myProfile.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 5),
                        tileColor: AppColors.secondaryThemeColor,
                        leading: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.mainThemeColor),
                            child: Icon(myProfile[index].icon)),
                        title: Text(
                          myProfile[index].title,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.highlightedTextColor),
                        ),
                        subtitle: Text(
                          myProfile[index].subTitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.unhighlightedTextColor),
                        ),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chevron_right)),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

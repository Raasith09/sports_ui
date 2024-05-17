import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sports_ui/model/allleaguemodel.dart';
import 'package:sports_ui/utils/my_colors.dart';
import 'package:sports_ui/utils/sized_box.dart';
import 'package:sports_ui/widgets/own_carouselslide.dart';
import 'package:sports_ui/widgets/row_sports.dart';

class HomeOne extends StatefulWidget {
  const HomeOne({super.key});

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyBanner(),
              30.kH,
              const RowSports(),
              20.kH,
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: leagueModel.length,
                  itemBuilder: (context, index) => FadeInDown(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColors.mainThemeColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      leagueModel[index].countryFlag,
                                      height: 28,
                                      width: 28,
                                    ),
                                    15.kW,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          leagueModel[index].leagueName,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors
                                                  .highlightedTextColor),
                                        ),
                                        Text(
                                          leagueModel[index].countryName,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors
                                                  .unhighlightedTextColor),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.chevron_right))
                                  ],
                                ),
                              ),
                              20.kH,
                              Container(
                                height: 72,
                                padding: const EdgeInsets.only(left: 2),
                                decoration: BoxDecoration(
                                    color: AppColors.secondaryThemeColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 72,
                                      child: Stack(
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsetsDirectional.all(
                                                    8),
                                            decoration: BoxDecoration(
                                                color: AppColors.mainThemeColor,
                                                shape: BoxShape.circle),
                                            child: Image.asset(
                                              leagueModel[index].club1Flag,
                                              height: 26,
                                              width: 24,
                                            ),
                                          ),
                                          Positioned(
                                            left: 32,
                                            bottom: 0,
                                            child: Container(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .all(8),
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColors.mainThemeColor,
                                                  shape: BoxShape.circle),
                                              child: Image.asset(
                                                leagueModel[index].club2Flag,
                                                height: 24,
                                                width: 24,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "${leagueModel[index].club1Name} vs ${leagueModel[index].club2Name}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors
                                                      .highlightedTextColor),
                                            )
                                          ],
                                        ),
                                        5.kH,
                                        Row(
                                          children: [
                                            Text(
                                              "${leagueModel[index].club1Goal}      vs     ${leagueModel[index].club2Goal}",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors
                                                      .highlightedTextColor),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: 45,
                                      height: 68,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff222232),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(16),
                                              bottomRight:
                                                  Radius.circular(16))),
                                      child: const Center(
                                        child: Text(
                                          "HT",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

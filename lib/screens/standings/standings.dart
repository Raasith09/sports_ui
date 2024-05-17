import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sports_ui/model/leaguetablemodel.dart';
import 'package:sports_ui/utils/my_colors.dart';
import 'package:sports_ui/utils/sized_box.dart';

class Standings extends StatefulWidget {
  const Standings({super.key});

  @override
  State<Standings> createState() => _StandingsState();
}

class _StandingsState extends State<Standings> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              30.kH,
              TextFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.unhighlightedTextColor,
                  ),
                  filled: true,
                  fillColor: AppColors.secondaryThemeColor,
                  hintText: "Search your team",
                  hintStyle: TextStyle(
                      color: AppColors.unhighlightedTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 20.0),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: myTable.length,
                  itemBuilder: (context, index) => FadeInUp(
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
                                      myTable[index].flag,
                                      height: 28,
                                      width: 28,
                                    ),
                                    15.kW,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          myTable[index].leagueName,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors
                                                  .highlightedTextColor),
                                        ),
                                        Text(
                                          myTable[index].leagueCountry,
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
                              10.kH,
                              Image.asset(
                                myTable[index].tableImage,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
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

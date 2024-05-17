import 'package:flutter/material.dart';
import 'package:sports_ui/model/allleaguemodel.dart';
import 'package:sports_ui/utils/my_colors.dart';
import 'package:sports_ui/utils/sized_box.dart';

class MyExplore extends StatefulWidget {
  const MyExplore({super.key});

  @override
  State<MyExplore> createState() => _MyExploreState();
}

class _MyExploreState extends State<MyExplore> {
  TextEditingController searchText = TextEditingController();

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
                Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: TextFormField(
                          controller: searchText,
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
                                vertical: 10.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                            ),
                          ),
                        )),
                    Expanded(
                        child: GestureDetector(
                            onTap: () => searchText.clear(),
                            child: const Center(
                                child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ))))
                  ],
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: leagueModel.length,
                    itemBuilder: (context, index) => Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.only(left: 2),
                          decoration: BoxDecoration(
                              color: AppColors.secondaryThemeColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 72,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding:
                                          const EdgeInsetsDirectional.all(8),
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
                                            const EdgeInsetsDirectional.all(8),
                                        decoration: BoxDecoration(
                                            color: AppColors.mainThemeColor,
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                            color:
                                                AppColors.highlightedTextColor),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                  width: 45,
                                  height: 68,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff222232),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          bottomRight: Radius.circular(16))),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      )))
                            ],
                          ),
                        ))
              ],
            ),
          ),
        ));
  }
}

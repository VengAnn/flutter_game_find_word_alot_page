import 'package:flutter/material.dart';
import 'package:game_find_word_app/utils/app_constant.dart';
import 'package:game_find_word_app/utils/dimensions.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // this background
              Container(
                width: Dimensions.screenWidth,
                height: Dimensions.screenHeight,
                decoration: BoxDecoration(
                  color: AllColorCustomSet.pAmberColor,
                ),
              ),
              // this show all content
              Column(
                children: [
                  SizedBox(height: Dimensions.height20),
                  // this for custom bar
                  Container(
                    height: Dimensions.height20 * 2,
                    width: Dimensions.screenWidth * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: AllColorCustomSet.pGreyColor,
                    ),
                    child: TabBar(
                      dividerColor: Colors.transparent, // hide divider
                      //indicatorSize this show tab fill when click
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: Colors.green[500],
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.blue,
                      tabs: const [
                        Tab(
                          text: "Home",
                        ),
                        Tab(text: "Page 2"),
                        Tab(text: "Page 3"),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height20),
                  // this show tabBarView
                  Expanded(
                    child: TabBarView(
                      children: [
                        // this show tabview content
                        const TabViewContent_1(),
                        // this show tabview content 2
                        Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Colors.red,
                          child: const Center(child: Text("page 2")),
                        ),
                        Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          color: Colors.cyan,
                          child: const Center(child: Text("page 3")),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class TabViewContent_1 extends StatelessWidget {
  const TabViewContent_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite, // set hiegth equal hiegth parent
      child: Column(
        children: [
          //a little bit hieght
          SizedBox(
            height: Dimensions.height20 * 2,
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AllColorCustomSet.pwhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20 * 1.5),
                      topRight: Radius.circular(Dimensions.radius20 * 1.5),
                    ),
                  ),
                ),

                //this show gird view
                Positioned(
                  top: -Dimensions.height20 * 2.5,
                  child: Container(
                    width: Dimensions.screenWidth,
                    height: Dimensions.screenHeight,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.0,
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width20,
                            vertical: Dimensions.height20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AllColorCustomSet.pSecondaryColor,
                              borderRadius: BorderRadius.circular(
                                Dimensions.radius15,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2.5,
                                  spreadRadius: 2,
                                  offset: const Offset(8, 10),
                                  color: index % 2 == 0
                                      ? AllColorCustomSet.pBlueLightColor
                                      : AllColorCustomSet.pPinkColor,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}

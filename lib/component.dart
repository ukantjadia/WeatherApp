import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_space/theme/app_colors.dart';

class bottomSheetCompo extends StatefulWidget {
  const bottomSheetCompo({key});

  @override
  State<bottomSheetCompo> createState() => _bottomSheetCompoState();
}
List list =[
  pageViewPageOne(),
  pageViewPageTwo(),
];

bool isHourly = true;
bool isWeekly = false;
int _currentIndex = 0;
PageController _pageController = PageController();

class _bottomSheetCompoState extends State<bottomSheetCompo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.amberAccent,
          body: Container(
            height: 500,
            width: 500,
            color: Colors.amberAccent,
            child: Center(
              child: Column(
                children: [
                  Text('Hello World'),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        // anchorPoint: Offset(30, 30),
                        backgroundColor: Colors.transparent,
                        elevation: 10,
                        // isScrollControlled: true,
                        enableDrag: true,
                        shape: BeveledRectangleBorder(
                          side: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        builder: (context) {
                          return Container(
                            height: MediaQuery.sizeOf(context).height * 0.65,
                            // width: 60,
                            decoration: BoxDecoration(
                              gradient: AppColors.gradDarkLinear,
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(44),
                                topRight: Radius.circular(44),
                              ),
                            ),
                            child: Column(
                              children: [
                                //* Complete container of bottom sheet
                                Container(
                                  width: double.infinity,
                                  color: Colors.yellow.withBlue(30),
                                  child: Column(
                                    children: [
                                      // * darg icon for bottom sheet
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.013),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.10,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(9),
                                          ),
                                          color: Colors.red,
                                        ),
                                      ),
                                      //* the hourly and weekly tab bar
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Hourly Forcast",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ).onTap(() {
                                            setState(() {
                                            _currentIndex = 0;
                                            _pageController.jumpToPage(0);
                                              debugPrint(
                                                  '$isWeekly,     $isHourly');
                                            });
                                          }),
                                          Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Weekly Forcast",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ).onTap(() {
                                            setState(() {
                                              _currentIndex = 1;
                                              _pageController.jumpToPage(1);
                                              debugPrint(
                                                  '$isWeekly,     $isHourly');
                                            });
                                          }),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
// * the main container for hourly and weekly forcast
                                  Container(
                                    height: 200,width: 300,
                                    child: PageView(
                                      physics: NeverScrollableScrollPhysics(),
                                      controller: _pageController,
                                      children: [
                                        list[_currentIndex]
                                      ],
                                    ),
                                  )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text("sdlfjsdlf"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class pageViewPageOne extends StatefulWidget {
  const pageViewPageOne({super.key});

  @override
  State<pageViewPageOne> createState() => _pageViewPageOneState();
}

class _pageViewPageOneState extends State<pageViewPageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.30,
      child: ListView.builder(
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                height: 146,
                width: 60,
                decoration: ShapeDecoration(
                  color: Color(0x3348319D),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      color: Colors.white.withOpacity(0.20000000298023224),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 10,
                      offset: Offset(5, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "AccM",
                      style: TextStyle(color: AppColors.tertiary),
                    ),
                    Icon(Icons.wb_sunny_outlined, size: 25),
                    Text("3$index")
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class pageViewPageTwo extends StatefulWidget {
  const pageViewPageTwo({super.key});

  @override
  State<pageViewPageTwo> createState() => _pageViewPageTwoState();
}

class _pageViewPageTwoState extends State<pageViewPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.30,
      child: ListView.builder(
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                height: 146,
                width: 60,
                decoration: ShapeDecoration(
                  color: Color(0x3348319D),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      color: Colors.white.withOpacity(0.20000000298023224),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 10,
                      offset: Offset(5, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "week",
                      style: TextStyle(color: AppColors.tertiary),
                    ),
                    Icon(Icons.wb_sunny_outlined, size: 25),
                    Text("3$index")
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}



// DraggableScrollableSheet(
//   builder: (context, scrollController) {
//     return Container(
//       padding: EdgeInsets.only(bottom: 11),
//       margin: EdgeInsets.only(top: 11),
//       decoration: const BoxDecoration(
//         color: Color(0xffB1B2ff),
//         borderRadius: BorderRadius.vertical(
//             top: Radius.circular(16)),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text("dlfjsldfjsldf"),
//           Text("dlfjsldfjsldf"),
//           Text("dlfjsldfjsldf"),
//           Text("dlfjsldfjsldf"),
//           Text("dlfjsldfjsldf"),
//           Text("dlfjsldfjsldf"),
//           Text("dlfjsldfjsldf"),
//           Text("dlfjsldfjsldf"),
//           Text("dlfjsldfjsldf"),
//         ],
//       ),
//     );
//   },
//   initialChildSize: 0.5,
//   minChildSize: 0.2,
//   maxChildSize: 0.8,
// );

import 'package:flutter/material.dart';

class bottomSheetCompo extends StatefulWidget {
  const bottomSheetCompo({key});

  @override
  State<bottomSheetCompo> createState() => _bottomSheetCompoState();
}

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
                          anchorPoint: Offset(30, 30),
                          // showDragHandle: true,

                          // backgroundColor:  LinearGradient(colors: [Colors.red,Colors.blue],begin: Alignment.topLeft,end: Alignment.bottomRight),
                          backgroundColor: Colors.transparent,
                          // barrierColor: Colors.black.withAlpha(1),
                          elevation: 10,
                          isScrollControlled: true,
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
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(46, 51, 90, 0.26),
                                    Color.fromRGBO(28, 27, 51, 0.26)
                                  ],
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(44),
                                  topRight: Radius.circular(44),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 55,
                                    color: Colors.purple.withBlue(70),
                                    child: Column(
                                      children: [
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
                                        Row(
                                          mainAxisAlignment : MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Hourly Forcast",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Weekly Forcast",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.50,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.30,
                                    child: ListView.builder(
                                      itemCount: 30,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return SingleChildScrollView(
                                          primary: true,
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                                height: 146,
                                                width: 60,
                                                decoration: ShapeDecoration(
                                                  color: Color(0x3348319D),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 0.50,
                                                      color: Colors.white
                                                          .withOpacity(
                                                              0.20000000298023224),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text("AM"),
                                                    Icon(
                                                        Icons.wb_sunny_outlined,
                                                        size: 25),
                                                    Text("3$index")
                                                  ],
                                                ),
                                              ),
                                              // Text("sdlfjsdlfkjsdlfjs"),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text("sdlfjsdlf"))
                ],
              ),
            ),
          ),
        ),
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
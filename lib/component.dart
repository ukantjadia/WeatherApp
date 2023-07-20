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
            height: 500,width: 500,
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
                          backgroundColor: Colors.transparent,
                          barrierColor: Colors.black.withAlpha(1),
                          elevation: 10,
                          clipBehavior: Clip.hardEdge,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          builder: (context) {
                            return Container(
                              height: 200,
                              width:400,
                              child: Center(
                                child: ListView.builder(
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          // padding: EdgeInsets.all(15),
                                          height:130,width: 80,
                                          decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(30),
                                            color: Colors.red.withAlpha(100)
                                          ),
                                          child: Column(
                                            children: [
                                              Text("${index} AM"),
                                              Icon(Icons.wb_sunny_outlined,size:25),
                                              Text("34")
                                            ],
                                          ),
                                        ),
                                        // Text("sdlfjsdlfkjsdlfjs"),
                                      ],
                                    );
                                  },
                                ),
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
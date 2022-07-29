import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jumpr2/HomeScreen/TopHorsersResults/highlightspage.dart';
import 'package:jumpr2/HomeScreen/TopHorsersResults/resultspage.dart';
import 'package:jumpr2/HomeScreen/TopHorsersResults/statisticspage.dart';
import 'package:jumpr2/HomeScreen/TopHorsersResults/winningmedaldetails.dart';

class TopHorsesResult extends StatefulWidget {
  const TopHorsesResult({Key? key}) : super(key: key);

  @override
  State<TopHorsesResult> createState() => _TopHorsesResultState();
}

class _TopHorsesResultState extends State<TopHorsesResult> {
  String riders = "All riders";
  String rating = "By Rating";
  String yearpicker = "2022";
  void showyearPicker(BuildContext ctx) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.290,
              child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 30,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: const [
                  Text('All'),
                  Text('2022'),
                  Text('2020'),
                  Text('2019'),
                  Text('2018'),
                  Text('custom')
                ],
                onSelectedItemChanged: (value) {
                  if (value == 0) {
                    setState(() {
                      yearpicker = "All time (2022 - 2018)";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      yearpicker = "2022";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      yearpicker = "2020";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      yearpicker = "2019";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      yearpicker = "2018";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      yearpicker = "Custom";
                    });
                  }
                },
              ),
            ));
  }

  void showridername(BuildContext ctx) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.290,
              child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 30,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: const [
                  Text('All'),
                  Text('Gerrit Neiberg'),
                  Text('Lars Neiberg'),
                  Text('Darline Eisenmenger')
                ],
                onSelectedItemChanged: (value) {
                  if (value == 0) {
                    setState(() {
                      riders = "All riders";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      riders = "Gerrit Neiberg";
                    });
                  }
                  if (value == 2) {
                    setState(() {
                      riders = "Lars Neiberg";
                    });
                  }
                  if (value == 3) {
                    setState(() {
                      riders = "Darline Eisenmenger";
                    });
                  }
                },
              ),
            ));
  }

  void showriderrating(BuildContext ctx) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.290,
              child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 30,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: const [
                  Text('Height'),
                  Text('Rating'),
                ],
                onSelectedItemChanged: (value) {
                  if (value == 0) {
                    setState(() {
                      rating = "By Height";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      rating = "By Rating";
                    });
                  }
                },
              ),
            ));
  }

  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xfff2f1f6),
        appBar: AppBar(
            actions: [
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.020),
                  ))
            ],
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              "Ben 431",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.026,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
        body: Center(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.015,
                  right: MediaQuery.of(context).size.height * 0.015),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    children: [
                      Text(
                        '03/03/2011 (11 y), Gelding',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '+ Add to Stable',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.024,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.010,
                  ),
                  Container(height: 1, color: Colors.grey.shade400),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          'Pedigree',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.018,
                        ),
                        visible == false
                            ? Icon(
                                Icons.arrow_forward_ios_sharp,
                                size:
                                    MediaQuery.of(context).size.height * 0.018,
                              )
                            : Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size:
                                    MediaQuery.of(context).size.height * 0.030,
                              )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.010,
                  ),
                  AnimatedContainer(
                    height: visible == true ? null : 0,
                    duration: const Duration(milliseconds: 400),
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.010,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Sire: ',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.020),
                                    ),
                                    Expanded(
                                        child: Text(
                                      'Sylvain',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.020),
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.007,
                  ),
                  Container(height: 1, color: Colors.grey.shade400),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.055,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      InkWell(
                        onTap: () => showridername(context),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            //  color: Colors.grey,
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.person,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.height *
                                      0.007,
                                ),
                                Text(
                                  riders,
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.018),
                                )
                              ],
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.045,
                      ),
                      InkWell(
                        onTap: () => showyearPicker(context),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            //  color: Colors.grey,
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.date_range,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.height *
                                      0.007,
                                ),
                                Text(
                                  yearpicker,
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.018),
                                )
                              ],
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.045,
                      ),
                      InkWell(
                        onTap: () => showriderrating(context),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            //  color: Colors.grey,
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                              width: 2,
                            ),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.person,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.height *
                                      0.007,
                                ),
                                Text(
                                  rating,
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.018),
                                )
                              ],
                            ),
                          )),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.033,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prize total',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              '6,58,004 EUR',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.013,
                        ),
                        Container(
                          width: 1,
                          height: MediaQuery.of(context).size.height * 0.045,
                          color: Colors.grey.shade400,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.012,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Podium',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              '15',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/gold-medal.png',
                              height:
                                  MediaQuery.of(context).size.height * 0.025,
                              width: MediaQuery.of(context).size.height * 0.025,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/gold-medal.png',
                              height:
                                  MediaQuery.of(context).size.height * 0.025,
                              width: MediaQuery.of(context).size.height * 0.025,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              '4',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/gold-medal.png',
                              height:
                                  MediaQuery.of(context).size.height * 0.025,
                              width: MediaQuery.of(context).size.height * 0.025,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              '7',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/gold-medal.png',
                              height:
                                  MediaQuery.of(context).size.height * 0.025,
                              width: MediaQuery.of(context).size.height * 0.025,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              '6',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * 0.050,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const WinningMedal()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                top:
                                    MediaQuery.of(context).size.height * 0.020),
                            child: Text(
                              'more',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.040,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.080,
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      bottom: TabBar(
                          indicatorColor: const Color(0xff009f86),
                          labelColor: const Color(0xff009f86),
                          unselectedLabelColor: const Color(0xffadadad),
                          labelStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.026,
                              fontWeight: FontWeight.bold),
                          tabs: const [
                            Tab(
                              text: "Statistics",
                            ),
                            Tab(
                              text: "Highlights",
                            ),
                            Tab(
                              text: "Results",
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(children: [
                StatisticsPage(),
                HighlightsPage(),
                ResultsPage()
              ]),
            )
          ]),
        ),
      ),
    );
  }
}

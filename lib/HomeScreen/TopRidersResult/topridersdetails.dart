import 'package:flutter/material.dart';
import 'package:jumpr2/HomeScreen/TopRidersResult/topriderhighlightspages.dart';
import 'package:jumpr2/HomeScreen/TopRidersResult/topriderhorsespage.dart';
import 'package:jumpr2/HomeScreen/TopRidersResult/topriderresultpage.dart';

class TopRidersDetail extends StatefulWidget {
  const TopRidersDetail({Key? key}) : super(key: key);

  @override
  State<TopRidersDetail> createState() => _TopRidersDetailState();
}

class _TopRidersDetailState extends State<TopRidersDetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
              "Scott Brash",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.026,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.030,
                ),
                Text(
                  'Great Britain',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),
            Container(height: 1, color: Colors.grey.shade400),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.030,
              ),
              Container(
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
                        width: MediaQuery.of(context).size.height * 0.007,
                      ),
                      Text(
                        "All time (2022 - 2015)",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018),
                      ),
                    ],
                  ),
                )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.045,
              ),
              Container(
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
                        width: MediaQuery.of(context).size.height * 0.007,
                      ),
                      Text(
                        "By Height",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018),
                      ),
                    ],
                  ),
                )),
              ),
            ]),
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
                            fontSize:
                                MediaQuery.of(context).size.height * 0.019),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '76,33,816 EUR',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.019),
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
                            fontSize:
                                MediaQuery.of(context).size.height * 0.019),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '208',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.019),
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
                        height: MediaQuery.of(context).size.height * 0.025,
                        width: MediaQuery.of(context).size.height * 0.025,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '93',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.019),
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
                        height: MediaQuery.of(context).size.height * 0.025,
                        width: MediaQuery.of(context).size.height * 0.025,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '64',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.019),
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
                        height: MediaQuery.of(context).size.height * 0.025,
                        width: MediaQuery.of(context).size.height * 0.025,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '51',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.019),
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
                        height: MediaQuery.of(context).size.height * 0.025,
                        width: MediaQuery.of(context).size.height * 0.025,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '56',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.019),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.050,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const WinningMedal()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.020),
                      child: Text(
                        'more',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.019),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),
            Container(height: 1, color: Colors.grey.shade400),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Clear round',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020),
                        ),
                        Text(
                          '44%',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.010,
                    ),
                    Container(
                        width: 1,
                        height: MediaQuery.of(context).size.height * 0.055,
                        color: Colors.grey.shade400),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.010,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '160cm',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020),
                        ),
                        Text(
                          '46%',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.010,
                    ),
                    Container(
                        width: 1,
                        height: MediaQuery.of(context).size.height * 0.055,
                        color: Colors.grey.shade400),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.010,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.010,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '150cm',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020),
                        ),
                        Text(
                          '42%',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.010,
                    ),
                    Container(
                        width: 1,
                        height: MediaQuery.of(context).size.height * 0.055,
                        color: Colors.grey.shade400),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.010,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '145cm',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020),
                        ),
                        Text(
                          '39%',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.030,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             const WinningMedal()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.020),
                        child: Row(
                          children: [
                            Text(
                              'more',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: MediaQuery.of(context).size.height * 0.020,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),
            Container(height: 1, color: Colors.grey.shade400),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.080,
              child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  bottom: const TabBar(
                    indicatorColor: Color(0xffc8402c),
                    unselectedLabelColor: Color(0xffaaaaaa),
                    labelColor: Color(0xffc8402c),
                    tabs: [
                      Tab(
                        text: 'Horses',
                      ),
                      Tab(
                        text: 'Highlights',
                      ),
                      Tab(
                        text: "Results",
                      )
                    ],
                  )),
            ),
            const Expanded(
                child: TabBarView(
              children: [HorsesPage(), TopRidersHighlights(), TopRiderResult()],
            ))
          ],
        )),
      ),
    );
  }
}

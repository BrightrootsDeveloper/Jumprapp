import 'package:flutter/material.dart';
import 'package:jumpr2/HomeScreen/searchresult.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  var currentindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 2,
                    ),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text(
                      'Sort: Date',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018),
                    ),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.070,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xff1a5baa),
                      child: Center(
                          child: Container(
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'Aachen',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            Text(
                              'Germany',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      itemBuilder: (context, indexes) {
                        return Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 0, right: 20, bottom: 20),
                              child: InkWell(
                                onTap: () {
                                  print('object');
                                  setState(() {
                                    currentindex == null
                                        ? currentindex = indexes
                                        : currentindex = null;
                                  });
                                },
                                child: Row(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xffd0e0f5),
                                    ),
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      'CSIO5*',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.018,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.height *
                                        0.014,
                                  ),
                                  Text(
                                    '160cm',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.018,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '03-Jul-2022',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.018,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        'Rolex Grand Prix',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.018,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.height *
                                        0.020,
                                  ),
                                  currentindex != indexes
                                      ? Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.027,
                                        )
                                      : Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.040,
                                        )
                                ]),
                              ),
                            ),
                            ExpandableContainer(
                                expanded:
                                    currentindex == indexes ? true : false,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        color: const Color(0xfff2f1f6),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.019),
                                                child: InkWell(
                                                  child: Row(children: [
                                                    Text(
                                                      "${index + 1}",
                                                      style: TextStyle(
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.018,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.027,
                                                    ),
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.40,
                                                          child: Text(
                                                            'Andre Thieme',
                                                            style: TextStyle(
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.018,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.01,
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.40,
                                                          child: Text(
                                                            'Chakaria',
                                                            style: TextStyle(
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.018,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const Spacer(),
                                                    Column(
                                                      children: [
                                                        Container(
                                                          padding: EdgeInsets.only(
                                                              left: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.070),
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.40,
                                                          child: Text(
                                                            '0/81.46/0/44.7',
                                                            style: TextStyle(
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.016,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.01,
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.only(
                                                              left: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.070),
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.40,
                                                          child: Text(
                                                            '66,000 EUR',
                                                            style: TextStyle(
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.016,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              Container(
                                                height: 2,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    }))
                          ],
                        );
                      },
                      shrinkWrap: true,
                      itemCount: 4,
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                  ],
                );
              },
              shrinkWrap: true,
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
            )
          ],
        )),
      ),
    );
  }
}

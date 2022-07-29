import 'package:flutter/material.dart';
import 'package:jumpr2/HomeScreen/searchresult.dart';

class FalsterboResult extends StatefulWidget {
  const FalsterboResult({Key? key}) : super(key: key);

  @override
  State<FalsterboResult> createState() => _FalsterboResultState();
}

class _FalsterboResultState extends State<FalsterboResult> {
  bool isexpandable = false;
  // ignore: prefer_typing_uninitialized_variables
  var currentindex;
  // ignore: prefer_typing_uninitialized_variables
  var currentyearindex;
  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/more.png',
                  height: MediaQuery.of(context).size.height * 0.040,
                  width: MediaQuery.of(context).size.height * 0.040,
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
            "Falsterbo",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.026,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      body: NestedScrollView(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xfff2f1f6),
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.040,
                    ),
                    Image.asset(
                      'assets/images/pin.png',
                      height: MediaQuery.of(context).size.height * 0.030,
                      width: MediaQuery.of(context).size.height * 0.030,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.010,
                    ),
                    Text(
                      'Sweden',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.020),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
              ]),
            ),
            Expanded(
              child: CustomScrollView(
                key: centerKey,
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, indexs) {
                        return Center(
                            child: Column(
                          children: [
                            Container(
                              color: const Color(0xff134a88),
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height * 0.080,
                              child: Center(
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.060),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'July 2022',
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.022,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ))),
                            ),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Column(children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.023,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        currentyearindex = indexs;
                                        isexpandable = false;
                                        currentindex == index
                                            ? currentindex = null
                                            : currentindex = index;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.040,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.050),
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: const Color(0xffcfdff4),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Text(
                                            'CSIO5*-NC',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.019,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.020,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.050),
                                          child: Text(
                                            '150cm',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.019,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: [
                                            Text(
                                              '16-jul-2022',
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.020,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.015,
                                            ),
                                            Text(
                                              'Table A',
                                              style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.020,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.013,
                                        ),
                                        (isexpandable == true)
                                            ? Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.040,
                                              )
                                            : (currentindex == index)
                                                ? Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.040,
                                                  )
                                                : const Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                  )
                                      ],
                                    ),
                                  ),
                                  ExpandableContainer(
                                      expanded: (currentyearindex == indexs)
                                          ? (currentindex == index)
                                              ? true
                                              : false
                                          : false,
                                      child: ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
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
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
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
                                                                      fontSize: MediaQuery.of(context)
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
                                                                      fontSize: MediaQuery.of(context)
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
                                                                    left: MediaQuery.of(context)
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
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize: MediaQuery.of(context)
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
                                                                    left: MediaQuery.of(context)
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
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize: MediaQuery.of(context)
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
                                ]);
                              },
                              shrinkWrap: true,
                              itemCount: 10,
                            )
                          ],
                        ));
                      },
                      childCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [];
        },
      ),
    );
  }
}

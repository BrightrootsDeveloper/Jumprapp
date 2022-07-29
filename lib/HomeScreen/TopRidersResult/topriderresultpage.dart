import 'package:flutter/material.dart';

class TopRiderResult extends StatefulWidget {
  const TopRiderResult({Key? key}) : super(key: key);

  @override
  State<TopRiderResult> createState() => _TopRiderResultState();
}

class _TopRiderResultState extends State<TopRiderResult> {
  // ignore: prefer_typing_uninitialized_variables
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
                      'Opglabbek',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.020,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      'Belgium',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.020,
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
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 20, top: 0, right: 20, bottom: 20),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              currentindex == null
                                  ? currentindex = index
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
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.018,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.014,
                            ),
                            Text(
                              '160cm',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
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
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.018,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'two phases',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.018,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.020,
                            ),
                            currentindex != index
                                ? Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: MediaQuery.of(context).size.height *
                                        0.027,
                                  )
                                : Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: MediaQuery.of(context).size.height *
                                        0.040,
                                  )
                          ]),
                        ),
                      ),
                      AnimatedContainer(
                          height: currentindex == index ? null : 0,
                          duration: const Duration(milliseconds: 400),
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(
                                          MediaQuery.of(context).size.height *
                                              0.019),
                                      child: InkWell(
                                        child: Row(children: [
                                          Text(
                                            "${index + 1}",
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.018,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.027,
                                          ),
                                          Column(
                                            children: [
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.40,
                                                child: Text(
                                                  'Andre Thieme',
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.018,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01,
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.40,
                                                child: Text(
                                                  'Chakaria',
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.018,
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.40,
                                                child: Text(
                                                  '0/81.46/0/44.7',
                                                  style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.016,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
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
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.40,
                                                child: Text(
                                                  '66,000 EUR',
                                                  style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
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
                                );
                              })),
                    ],
                  );
                })
          ],
        )),
      ),
    );
  }
}

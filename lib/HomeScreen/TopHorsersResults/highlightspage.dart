import 'package:flutter/material.dart';

class HighlightsPage extends StatefulWidget {
  const HighlightsPage({Key? key}) : super(key: key);

  @override
  State<HighlightsPage> createState() => _HighlightsPageState();
}

class _HighlightsPageState extends State<HighlightsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f1f6),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
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
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.070,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffffdc6e),
                      child: Center(
                          child: Container(
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              'St. Gallen',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              'Switzerland',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.020,
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                          left: 10,
                          right: MediaQuery.of(context).size.height * 0.040,
                          top: 10,
                          bottom: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xffd0e0f5),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  'CSIO5*-NC',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.018,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.height * 0.014,
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
                              Text(
                                '06-Jun-2022',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.018,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Text(
                                '4',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.018,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Text(
                                      'Gerrit Nieberg',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.018,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Text(
                                      'Ben 431',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.018,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    child: Text(
                                      '4/71.24/0/71.47',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.018,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    child: Text(
                                      '6,000 EUR',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.018,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            )
          ]),
        ),
      ),
    );
  }
}

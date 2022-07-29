import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HorsesPage extends StatefulWidget {
  const HorsesPage({Key? key}) : super(key: key);

  @override
  State<HorsesPage> createState() => _HorsesPageState();
}

class _HorsesPageState extends State<HorsesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.500,
              child: Stack(
                children: [
                  PieChart(PieChartData(
                      centerSpaceRadius:
                          MediaQuery.of(context).size.height * 0.070,
                      // borderData: FlBorderData(show: false),
                      sections: [
                        PieChartSectionData(
                            title: "",
                            value: 10,
                            color: const Color(0xffc8402c),
                            radius: 90),
                        PieChartSectionData(
                            title: "",
                            value: 20,
                            color: const Color(0xff089f87),
                            radius: 90),
                        PieChartSectionData(
                            title: "",
                            value: 10,
                            color: const Color(0xff01a3c8),
                            radius: 90),
                        PieChartSectionData(
                            title: "",
                            value: 10,
                            color: const Color(0xff1a5baa),
                            radius: 90),
                        PieChartSectionData(
                            title: "",
                            value: 10,
                            color: const Color(0xff013277),
                            radius: 90),
                        PieChartSectionData(
                            title: "",
                            value: 10,
                            color: const Color(0xff1a5baa),
                            radius: 90),
                        PieChartSectionData(
                            title: "",
                            value: 10,
                            color: const Color(0xff013277),
                            radius: 90),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Class shown\n 40',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.017,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
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
                      'Clear round %',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018),
                    ),
                  )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.010,
                ),
                Container(
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
                      'Top10 %',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018),
                    ),
                  )),
                ),
                 SizedBox(
                  width: MediaQuery.of(context).size.height * 0.010,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.080,
              color: const Color(0xffc8402c),
              child: Center(
                  child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.height * 0.090,
                      child: Text(
                        '',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.017,
                        ),
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.09,
                  ),
                  Text(
                    'Height',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    'Clear\nround',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),

                  Text(
                    'Top10',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    'Class\nshown',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.height * 0.090,
                              child: Text(
                                'Ben 431',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.017,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.09,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.175,
                            child: Text(
                              '160-150cm',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.017,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Text(
                            '43%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Text(
                            '53%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.10,
                          ),
                          Text(
                            '28',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey.shade400,
                    ),
                  ],
                );
              },
              shrinkWrap: true,
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        )),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.040,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.140,
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
                      'Clear round %',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018),
                    ),
                  )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.017,
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
                  width: MediaQuery.of(context).size.height * 0.017,
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
                      'All rounds',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018),
                    ),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.022,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.080,
              color: const Color(0xff009f86),
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
                    'Average\nfaults',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    'Clear\nround',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    'Top10',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    'Finished\nround',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Colors.white),
                  ),
                ],
              )),
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.height * 0.090,
                              child: Text(
                                '160cm',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.017,
                                ),
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.09,
                          ),
                          Column(
                            children: [
                              Text(
                                '2.89',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.017,
                                ),
                              ),
                              Text(
                                '4.78',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    color: Color(0xff009f86)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.10,
                          ),
                          Column(
                            children: [
                              Text(
                                '43%',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.017,
                                ),
                              ),
                              Text(
                                '26%',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    color: Color(0xff009f86)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Column(
                            children: [
                              Text(
                                '53%',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.017,
                                ),
                              ),
                              Text(
                                '28%',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    color: Color(0xff009f86)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.10,
                          ),
                          Column(
                            children: [
                              Text(
                                '28',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.017,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: MediaQuery.of(context).size.height * 0.020,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey.shade400,
                    ),
                  ],
                );
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Elim/Ret/WD:  3',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.017,
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              width: MediaQuery.of(context).size.width,
              color: const Color(0xfff2f2f6),
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                Container(
                    alignment: Alignment.topRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '*excluding Accumulator/Table C/Special',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Text(
                          'Above mean (differnce)',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018),
                        ),
                        Text(
                          'Below mean (differnce)',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        Text(
                          'How is mean calculated?',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.018,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.050,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Trend analysis',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.030,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
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
                Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Clear round (%)',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.020,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.270,
                  child: BarChart(BarChartData(
                      borderData: FlBorderData(
                          border: const Border(
                        top: BorderSide.none,
                        right: BorderSide.none,
                        bottom: BorderSide(width: 2),
                      )),
                      groupsSpace: 0,
                      barGroups: [
                        BarChartGroupData(x: 2015, barRods: [
                          BarChartRodData(
                              borderRadius: const BorderRadius.vertical(),
                              width: 20,
                              color: Colors.transparent,
                              toY: 10),
                        ]),
                        BarChartGroupData(x: 2016, barRods: [
                          BarChartRodData(
                              borderRadius: const BorderRadius.vertical(),
                              width: 20,
                              color: Colors.transparent,
                              toY: 10),
                        ]),
                        BarChartGroupData(x: 2017, barRods: [
                          BarChartRodData(
                              borderRadius: const BorderRadius.vertical(),
                              width: 20,
                              color: Colors.transparent,
                              toY: 10),
                        ]),
                        BarChartGroupData(x: 2018, barRods: [
                          BarChartRodData(
                              borderRadius: const BorderRadius.vertical(),
                              width: 20,
                              color: Colors.transparent,
                              toY: 10),
                        ]),
                        BarChartGroupData(x: 2015, barRods: [
                          BarChartRodData(
                              borderRadius: const BorderRadius.vertical(),
                              width: MediaQuery.of(context).size.height * 0.040,
                              color: const Color(0xff01a3c8),
                              toY: 8),
                        ]),
                        BarChartGroupData(x: 2015, barRods: [
                          BarChartRodData(
                              borderRadius: const BorderRadius.vertical(),
                              width: MediaQuery.of(context).size.height * 0.040,
                              color: const Color(0xff01a3c8),
                              toY: 5),
                        ]),
                        BarChartGroupData(x: 2015, barRods: [
                          BarChartRodData(
                            borderRadius: const BorderRadius.vertical(),
                            width: MediaQuery.of(context).size.height * 0.040,
                            color: const Color(0xff01a3c8),
                            toY: 10,
                          ),
                        ]),
                        BarChartGroupData(x: 2, barRods: [
                          BarChartRodData(
                              borderRadius: const BorderRadius.vertical(),
                              width: MediaQuery.of(context).size.height * 0.040,
                              color: const Color(0xff01a3c8),
                              toY: 7),
                        ]),
                      ])),
                ),
                const SizedBox(
                  height: 20,
                ),
              ]),
            ),
          ],
        )),
      ),
    );
  }
}

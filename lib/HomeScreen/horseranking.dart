import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorseRanking extends StatefulWidget {
  const HorseRanking({Key? key}) : super(key: key);

  @override
  State<HorseRanking> createState() => _HorseRankingState();
}

class _HorseRankingState extends State<HorseRanking> {
  // ignore: non_constant_identifier_names
  var ListTextValue = [
    '30 days',
    '3 months',
    '6 months',
    'Year to Date',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    'All time (2015 - 2022)',
    'Custom'
  ];
  var selsectyear = "3 months";
  String currency = "USD";
  void showPickerforcurrency(BuildContext ctx) {
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
                  Text('EUR'),
                  Text('USD'),
                ],
                onSelectedItemChanged: (value) {
                  if (value == 0) {
                    setState(() {
                      currency = "EUR";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      currency = "USD";
                    });
                  }
                },
              ),
            ));
  }

  void showPickeryear(BuildContext ctx) {
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
                  Text('30 days'),
                  Text('3 months'),
                  Text('6 months'),
                  Text('Year to Date'),
                  Text('2021'),
                  Text('2020'),
                  Text('2019'),
                  Text('2018'),
                  Text('2017'),
                  Text('2016'),
                  Text('2015'),
                  Text('All time (2015 - 2022)'),
                  Text('Custom'),
                ],
                onSelectedItemChanged: (value) {
                  setState(() {
                    selsectyear = ListTextValue[value];
                  });
                },
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            "Horser Ranking",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.026,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      body: Center(
          child: Column(
        children: [
          Container(
            color: const Color(0xfff2f1f6),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.090,
            child: Center(
                child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(children: [
                InkWell(
                  onTap: () => showPickerforcurrency(context),
                  child: Row(
                    children: [
                      Text(
                        'Currency: $currency',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.006,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => showPickeryear(context),
                  child: Row(
                    children: [
                      Text(
                        selsectyear.toString(),
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.006,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ]),
            )),
          ),
          Container(
            color: const Color(0xff043175),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.090,
            child: Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.080,
                    right: MediaQuery.of(context).size.height * 0.030),
                child: Center(
                  child: Row(children: [
                    Text(
                      'Name',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * 0.020),
                    ),
                    const Spacer(),
                    Text(
                      'Accumulated\nprize',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * 0.020),
                    ),
                  ]),
                )),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Column(children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.030,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height * 0.030,
                              right:
                                  MediaQuery.of(context).size.height * 0.050),
                          child: Center(
                              child: Row(
                            children: [
                              Text('${index + 1}'),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.height * 0.034,
                              ),
                              Expanded(
                                child: SizedBox(
                                    width: MediaQuery.of(context).size.height *
                                        0.260,
                                    child: Text(
                                      'Ben 431',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.020,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              const Spacer(),
                              const Text('5,11,000')
                            ],
                          )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.030,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.045,
                            ),
                            Expanded(
                                child: Text(
                              'Gelding, 11 yo, rider: Gerrit Neiberg',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.015),
                            ))
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.012),
                        Container(
                          height: 2,
                          color: const Color(0xfff6f5f9),
                        )
                      ]),
                    );
                  }))
        ],
      )),
    );
  }
}

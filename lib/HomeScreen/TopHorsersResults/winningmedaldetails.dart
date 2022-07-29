import 'package:flutter/material.dart';

class WinningMedal extends StatefulWidget {
  const WinningMedal({Key? key}) : super(key: key);

  @override
  State<WinningMedal> createState() => _WinningMedalState();
}

class _WinningMedalState extends State<WinningMedal> {
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
            "Ben 431",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.026,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      body: Center(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.080,
            color: const Color(0xffffdc6e),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/gold-medal.png',
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.050,
                ),
                Image.asset(
                  'assets/images/silver-medal.png',
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.050,
                ),
                Image.asset(
                  'assets/images/bronze-medal.png',
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.050,
                ),
                Text(
                  'Total',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.020,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.030,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.030,
                            ),
                            Text(
                              '160cm',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.111,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.073,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.073,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.060,
                            ),
                            Text(
                              '3',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.015,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: MediaQuery.of(context).size.height * 0.020,
                            )
                          ]),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.028,
                        ),
                        Container(
                          height: 1,
                          color: const Color(0xfff2f1f6),
                        )
                      ],
                    );
                  }))
        ],
      )),
    );
  }
}

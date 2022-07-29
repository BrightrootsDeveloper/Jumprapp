import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jumpr2/HomeScreen/searchresult.dart';

class NewEvents extends StatefulWidget {
  const NewEvents({Key? key}) : super(key: key);

  @override
  State<NewEvents> createState() => _NewEventsState();
}

class _NewEventsState extends State<NewEvents> {
  String sortby = "Rating";
  String monthpicker = "Past Month";
  void showPicker(BuildContext ctx) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.290,
              child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 30,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: const [Text('Rating'), Text('Country'), Text('Date')],
                onSelectedItemChanged: (value) {
                  if (value == 0) {
                    setState(() {
                      sortby = "Rating";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      sortby = "Country";
                    });
                  }
                  if (value == 2) {
                    setState(() {
                      sortby = "Date";
                    });
                  }
                  print(value);
                },
              ),
            ));
  }

  void showmonthPicker(BuildContext ctx) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.290,
              child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 30,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: [Text('Past Month'), Text('Custom')],
                onSelectedItemChanged: (value) {
                  if (value == 0) {
                    setState(() {
                      monthpicker = "Past Month";
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      monthpicker = "Custom";
                    });
                  }
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
            "Events",
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
                  onTap: () => showPicker(context),
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          'Sort by: $sortby',
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
                ),
                const Spacer(),
                InkWell(
                  onTap: () => showmonthPicker(context),
                  child: Row(
                    children: [
                      Text(
                        monthpicker,
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
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19))),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Center(
                    child: Column(children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchResult()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          child: Row(children: [
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).size.height *
                                      0.042),
                              child: Image.asset(
                                'assets/images/canada.png',
                                height:
                                    MediaQuery.of(context).size.height * 0.030,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.028,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.height *
                                      0.140,
                                  child: Text(
                                    'Falesterbo',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.021,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.020,
                                ),
                                Text(
                                  'CAN',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.016,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.025,
                                  width: MediaQuery.of(context).size.height *
                                      0.025,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffcfdff4),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Text(
                                    '5*',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.016,
                                    ),
                                  )),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.017,
                                ),
                                Text(
                                  'Jul 14 - 17',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.016,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.height * 0.070,
                            ),
                            const Icon(Icons.arrow_forward_ios)
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      Container(
                        height: 2,
                        color: const Color(0xfff6f5f9),
                      )
                    ]),
                  );
                }),
          ))
        ],
      )),
    );
  }
}

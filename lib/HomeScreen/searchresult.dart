import 'package:flutter/material.dart';
import 'package:jumpr2/HomeScreen/falsterboresult.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  void _showBottompageforshowresult(BuildContext context) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return FractionallySizedBox(
            heightFactor: 0.3,
            child: Container(
                margin: const EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.040,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isexpandable = true;
                          Navigator.pop(context);
                        });
                      },
                      child: Row(
                        children: [
                          Text(
                            'Expand results',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.022,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffcdcdd1),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),
                  ],
                )),
          );
        });
  }

  // ignore: prefer_typing_uninitialized_variables
  var currentindex;
  bool isexpandable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => _showBottompageforshowresult(context),
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
            "Search results",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.026,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      body: NestedScrollView(
        body: Center(
            child: Column(
          children: [
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xfff2f1f6),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.040,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.067,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5, right: 4),
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height * 0.012),
                          decoration: BoxDecoration(
                              color: const Color(0xffc2c2c2).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'show: Falsterbo',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.017,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height * 0.012),
                          decoration: BoxDecoration(
                              color: const Color(0xffc2c2c2).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'date: 14/07/22 - 16/07/22',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.017,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.017,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    alignment: Alignment.topRight,
                    child: Text(
                      'Showing 6 classes',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.017,
                          color: const Color(0xffa5a5a7),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.050,
                  ),
                  Container(
                    color: const Color(0xff134a88),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.080,
                    child: Center(
                        child: Container(
                            margin: EdgeInsets.only(
                                left:
                                    MediaQuery.of(context).size.height * 0.060),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'July 2022',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.022,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              color: Colors.white,
                              child: Center(
                                child: Column(children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.023,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
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
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.018,
                                  ),
                                  Container(
                                    height: 2,
                                    color: const Color(0xffc4c3c6)
                                        .withOpacity(0.5),
                                  ),
                                  ExpandableContainer(
                                      expanded: (isexpandable == true)
                                          ? true
                                          : (currentindex == index)
                                              ? true
                                              : false,
                                      child: ListView.builder(
                                          physics: const NeverScrollableScrollPhysics(),
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
                                                        onTap: () =>
                                                            _showBottompagefornextscreen(
                                                                context),
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
                                ]),
                              ),
                            );
                          }))
                ],
              ),
            ))
          ],
        )),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [];
        },
      ),
    );
  }
}

class ExpandableContainer extends StatelessWidget {
  final bool expanded;
  final double collapsedHeight;
  final Widget child;

  // ignore: use_key_in_widget_constructors
  const ExpandableContainer({
    required this.child,
    this.collapsedHeight = 0.0,
    this.expanded = true,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: screenWidth,
      height: expanded ? MediaQuery.of(context).size.height : collapsedHeight,
      child: Container(
        child: child,
      ),
    );
  }
}

Future _showBottompagefornextscreen(BuildContext context) {
  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (builder) {
        return FractionallySizedBox(
          heightFactor: 0.3,
          child: Container(
              margin: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.040,
                  ),
                  Row(
                    children: [
                      Text(
                        'Go to Horse Page',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xffcdcdd1),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                  Row(
                    children: [
                      Text(
                        'Go to Rider Page',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xffcdcdd1),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FalsterboResult()));
                    },
                    child: Row(
                      children: [
                        Text(
                          'View all results from Falsterbo',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xffcdcdd1),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                ],
              )),
        );
      });
}

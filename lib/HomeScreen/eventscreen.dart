import 'package:flutter/material.dart';
import 'package:jumpr2/HomeScreen/TopHorsersResults/tophorsesresult.dart';
import 'package:jumpr2/HomeScreen/TopRidersResult/topridersdetails.dart';
import 'package:jumpr2/HomeScreen/horseranking.dart';
import 'package:jumpr2/HomeScreen/newevents.dart';
import 'package:jumpr2/HomeScreen/riderranking.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              backgroundColor: Color(0xff02295f),
              leading: Text(""),
              centerTitle: true,
              pinned: false,
              floating: true,
              title: Text("J U M P R"),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Container(
                color: const Color(0xffd2eaea),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30, left: 20),
                  child: Column(children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recent Events',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.03,
                            color: const Color(0xff02a183),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewEvents()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        alignment: Alignment.topRight,
                        child: Text(
                          'View More',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017,
                              color: const Color(0xff02a183),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.018,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.180,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 4.0,
                                  mainAxisExtent:
                                      MediaQuery.of(context).size.height *
                                          0.230,
                                  mainAxisSpacing: 4.0),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 5, right: 5, top: 2),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.002),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.026,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.026,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffd0dff6),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                              '5*',
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.015,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.002),
                                            // height: ,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.026,
                                            decoration: BoxDecoration(
                                                color: const Color(0xfffdf8db),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                              '4*',
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.015,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.002),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.026,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.026,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffd0dff6),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                              '2*',
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.015,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.002),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.026,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.026,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffd0dff6),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                              '1*',
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.015,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                            'assets/images/india.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.030,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.008,
                                    ),
                                    Text(
                                      'Valkanswaard ',
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.017,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                        margin: const EdgeInsets.only(right: 5),
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          'IND',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.016,
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ],
                                ));
                          },
                        )),
                  ]),
                )),
              ),
              Container(
                color: const Color(0xffffeef6),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 30),
                  child: Center(
                      child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Top Horsess',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              color: const Color(0xffc63f2a),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HorseRanking()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          alignment: Alignment.topRight,
                          child: Text(
                            'View More',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.017,
                                color: const Color(0xffcc4b4f),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.230,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 9,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 4.0,
                                  mainAxisExtent:
                                      MediaQuery.of(context).size.height *
                                          0.230,
                                  mainAxisSpacing: 4.0),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TopHorsesResult()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      left: 5, right: 5, top: 2),
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Row(children: [
                                        Text(
                                          '${index + 1}.',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.015),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '11 yo',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.015),
                                        )
                                      ]),
                                      Text(
                                        'Ben431',
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.017,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Spacer(),
                                      Container(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            '+ 5,11,000 EUR',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.015),
                                          ))
                                    ],
                                  )),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )),
                ),
              ),
              Container(
                color: const Color(0xffccdcf5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 30),
                  child: Center(
                      child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Top Riders',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              color: const Color(0xff072d7d),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RideRanking()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          alignment: Alignment.topRight,
                          child: Text(
                            'View More',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.017,
                                color: const Color(0xff072d7d),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.260,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 9,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 4.0,
                                  mainAxisExtent:
                                      MediaQuery.of(context).size.height *
                                          0.230,
                                  mainAxisSpacing: 4.0),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TopRidersDetail()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      left: 5, right: 5, top: 2),
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Row(children: [
                                        Text(
                                          '${index + 1}.',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.015),
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          'assets/images/india.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.030,
                                        )
                                      ]),
                                      Text(
                                        'Gerrit Neiberg',
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.017,
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0xff1c2c4a)),
                                      ),
                                      const Spacer(),
                                      Container(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            '+ 5,30,030 EUR',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.015),
                                          ))
                                    ],
                                  )),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

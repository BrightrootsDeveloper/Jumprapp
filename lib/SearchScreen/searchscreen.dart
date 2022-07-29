import 'package:flutter/material.dart';
import 'package:jumpr2/SearchScreen/searchfilters.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.054,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                  color: const Color(0xffebebed),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "Horse, rider or show",
                    helperStyle: TextStyle(color: Color(0xff8e8d92))),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.040,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Explore',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.026,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SearchFilter(
                                          horses: true,
                                        )));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.095,
                            decoration: BoxDecoration(
                                color: const Color(0xffddecee),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Horse',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.030,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchFilter(riders: true,horses: false,)));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.095,
                            decoration: BoxDecoration(
                                color: const Color(0xffddecee),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Rider',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.020,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>const SearchFilter(riders: false,horses: false,Class: true,)));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.095,
                            decoration: BoxDecoration(
                                color: const Color(0xffddecee),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Class',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.020,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.030,
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.095,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                              child: Text(
                            '',
                          )),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.070,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Discover horses',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.026,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(children: [
                      Expanded(
                        child: InkWell(
                         onTap: () {
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.095,
                            decoration: BoxDecoration(
                                color: const Color(0xffd7e4f3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Clear round %',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.020,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.030,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.095,
                            decoration: BoxDecoration(
                                color: const Color(0xffd7e4f3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Placement %',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.020,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(children: [
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.095,
                          decoration: BoxDecoration(
                              color: const Color(0xffd7e4f3),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                            'Pedigree',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.020,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.030,
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.095,
                          decoration: BoxDecoration(
                              color: const Color(0xffd7e4f3),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text(
                            'Result',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.020,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                ]),
              ),
            )
          ],
        )),
      ),
    );
  }
}

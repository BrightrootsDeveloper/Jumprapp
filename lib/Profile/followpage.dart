import 'package:flutter/material.dart';

class FollowPage extends StatefulWidget {
  const FollowPage({Key? key}) : super(key: key);

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  bool ischecked = false;
  bool ischecked2 = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0001,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.height * 0.330,
                  height: MediaQuery.of(context).size.height * 0.080,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    bottom: TabBar(
                        indicatorColor: const Color(0xff02285e),
                        labelStyle: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                            fontWeight: FontWeight.bold),
                        unselectedLabelColor: const Color(0xffadadad),
                        labelColor: const Color(0xff02285e),
                        tabs: const [
                          Tab(
                            text: "Results",
                          ),
                          Tab(
                            text: "Following",
                          )
                        ]),
                  ),
                ),
                const Spacer(),
                Container(
                  // margin: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Horse',
                            style: TextStyle(
                                color: const Color(0xff02285e),
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.018),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.004,
                          ),
                          Transform.scale(
                            scale: 1.3,
                            child: Checkbox(
                              tristate: true,
                              value: ischecked,
                              side: BorderSide(
                                  color: (ischecked == false)
                                      ? const Color(0xff02285e)
                                      : Colors.grey),
                              checkColor: const Color(0xff02285e),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              onChanged: (newValue) {
                                setState(() {
                                  ischecked = !ischecked;
                                });
                              },
                              activeColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.028,
                        child: Row(
                          children: [
                            Text(
                              'Rider',
                              style: TextStyle(
                                  color: const Color(0xff02285e),
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.018),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.004,
                            ),
                            Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                tristate: true,
                                value: ischecked2,
                                side: BorderSide(
                                    color: (ischecked == false)
                                        ? const Color(0xff02285e)
                                        : Colors.grey),
                                checkColor: const Color(0xff02285e),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                onChanged: (newValue) {
                                  setState(() {
                                    ischecked2 = !ischecked2;
                                  });
                                },
                                activeColor: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
             Text(
              'Get notified',
              style: TextStyle(
                  color: const Color(0xff02285e), fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height * 0.020),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
             Text(
              'Discover a horse a rider to follow.\n You will recieve a notification when\n new result are available',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xff02285e),
                fontSize: MediaQuery.of(context).size.height * 0.018
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
             Text(
              'Search',
              style: TextStyle(
                  color: const Color(0xff02285e), fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height * 0.020),
            ),
          ],
        )),
      ),
    );
  }
}

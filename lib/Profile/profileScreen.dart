// ignore: file_names
import 'package:flutter/material.dart';
import 'package:jumpr2/Components/formtextbutton.dart';
import 'package:jumpr2/Profile/followpage.dart';
import 'package:jumpr2/Profile/stablepage.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.080,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.340,
                      child: AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          leading: const Text(""),
                          bottom: TabBar(
                            unselectedLabelColor: const Color(0xffadadad),
                            indicator:
                                const BoxDecoration(color: Colors.transparent),
                            labelColor: const Color(0xff02285e),
                            labelStyle: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.036,
                                fontWeight: FontWeight.bold),
                            tabs: const [
                              Tab(
                                text: "Follow",
                              ),
                              Tab(
                                text: "Stable",
                              )
                            ],
                          )),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => _showBottomSheet(),
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: const Icon(Icons.settings),
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                  child: TabBarView(
                children: [FollowPage(), StablePage()],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Future _showBottomSheet() {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return FractionallySizedBox(
            heightFactor: 0.9,
            child: Container(
                margin: const EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.040,
                    ),
                    Text(
                      'Hello Name,',
                      style: TextStyle(
                          color: const Color(0xff07387a),
                          fontSize: MediaQuery.of(context).size.height * 0.028,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.060,
                    ),
                    Row(
                      children: [
                        Text(
                          'Change Default Statistic',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                              fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: const Icon(Icons.arrow_forward_ios_rounded))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
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
                          'Redeem Code',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                              fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: const Icon(Icons.arrow_forward_ios_rounded))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
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
                      onTap: () => _ContactUs(),
                      child: Row(
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.022,
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          Container(
                              margin: const EdgeInsets.only(right: 20),
                              child:
                                  const Icon(Icons.arrow_forward_ios_rounded))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
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
                          'Not Name? Sign Out',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                              fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: const Icon(Icons.arrow_forward_ios_rounded))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffcdcdd1),
                    )
                  ],
                )),
          );
        });
  }

  // ignore: non_constant_identifier_names
  Future _ContactUs() {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return FractionallySizedBox(
            heightFactor: 0.8,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.040),
                Text(
                  'How can we help?',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.040,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                Text(
                  "We'd love to hear from you!",
                  style: TextStyle(
                    color: const Color(0xff9e9da2),
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
                ),
                Container(
                  height: 1,
                  color: const Color(0xffe2e2e3),
                ),
                Container(
                  padding: EdgeInsets.all(
                      MediaQuery.of(context).size.height * 0.015),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Subject"),
                  ),
                ),
                Container(
                  height: 1,
                  color: const Color(0xffe2e2e3),
                ),
                Container(
                  padding: EdgeInsets.all(
                      MediaQuery.of(context).size.height * 0.015),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add your message here"),
                  ),
                ),
                const Spacer(),
                Container(
                    margin:const EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width - 40,
                    child: FormTextButton(
                      buttontitle: "Send",
                      onPressed: () {},
                    ))
              ],
            ),
          );
        });
  }
}

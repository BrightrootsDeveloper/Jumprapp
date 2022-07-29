import 'package:flutter/material.dart';

class StablePage extends StatefulWidget {
  const StablePage({Key? key}) : super(key: key);

  @override
  State<StablePage> createState() => _StablePageState();
}

class _StablePageState extends State<StablePage> {
  int currentindex = 0;
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
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.330,
                    height: MediaQuery.of(context).size.height * 0.080,
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      bottom: TabBar(
                          onTap: ((value) {
                            setState(() {
                              currentindex = value;
                            });
                          }),
                          indicatorColor: (currentindex == 0)
                              ? const Color(0xffc5452c)
                              : const Color(0xff02285e),
                          labelStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                              fontWeight: FontWeight.bold),
                          unselectedLabelColor: const Color(0xffadadad),
                          labelColor: (currentindex == 0)
                              ? const Color(0xffc5452c)
                              : const Color(0xff02285e),
                          tabs: const [
                            Tab(
                              text: "Horsers",
                            ),
                            Tab(
                              text: "Results",
                            )
                          ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Text(
                'Add to Stable',
                style: TextStyle(
                    color: const Color(0xff02285e),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.020),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'Claim your horses to add to Stable.\n You can manage your hourses here.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff02285e),
                    fontSize: MediaQuery.of(context).size.height * 0.018),
              ),
            ],
          )),
        ));
  }
}

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SearchFilter extends StatefulWidget {
  final horses;
  final riders;
  final Class;
  final Clearround;
  final Placement;
  const SearchFilter(
      {Key? key,
      this.horses = false,
      this.riders = false,
      this.Class = false,
      this.Clearround = false,
      this.Placement = false})
      : super(key: key);

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Select filters',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            (widget.horses == true ||
                    widget.Clearround == true ||
                    widget.Placement == true)
                ? HorseFilter()
                : Container(),
            (widget.riders == true) ? RiderFilter() : Container(),
            (widget.horses == true ||
                    widget.riders == true ||
                    widget.Class == true)
                ? EventFilter(widget.Class)
                : Container(),
            (widget.Clearround == true || widget.Placement == true)
                ? PerformanceFilter()
                : Container()
          ],
        )),
      ),
    );
  }

  Widget RiderFilter() {
    return Container(
      color: const Color(0xfff2f1f6),
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(children: [
            Text(
              'Rider',
              style: TextStyle(
                  color: const Color(0xff013277),
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(0xff013277),
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Row(
            children: [
              Text(
                'Nationality:',
                style: TextStyle(
                    color: const Color(0xff1c2d4b),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.030,
              ),
              Expanded(
                  child: Text(
                'Any',
                style: TextStyle(
                    color: const Color(0xff808080),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Container(
            height: 1,
            color: const Color(0xffd0d0d1),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Row(
            children: [
              Text(
                'Sort by:',
                style: TextStyle(
                    color: const Color(0xff1c2d4b),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.030,
              ),
              Expanded(
                  child: Text(
                'Clear round',
                style: TextStyle(
                    color: const Color(0xff808080),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Container(
            height: 1,
            color: const Color(0xffd0d0d1),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget EventFilter(bool horses) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(children: [
            Text(
              'Event',
              style: TextStyle(
                  color: const Color(0xff089f87),
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(0xff089f87),
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Row(
            children: [
              Text(
                'Height:',
                style: TextStyle(
                    color: const Color(0xff1c2d4b),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.030,
              ),
              Expanded(
                  child: Text(
                'Any',
                style: TextStyle(
                    color: const Color(0xff808080),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Container(
            height: 1,
            color: const Color(0xffd0d0d1),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Row(
            children: [
              Text(
                'Rating:',
                style: TextStyle(
                    color: const Color(0xff1c2d4b),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.030,
              ),
              Expanded(
                  child: Text(
                'Any',
                style: TextStyle(
                    color: const Color(0xff808080),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Container(
            height: 1,
            color: const Color(0xffd0d0d1),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Row(
            children: [
              Text(
                'Date:',
                style: TextStyle(
                    color: const Color(0xff1c2d4b),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.030,
              ),
              Expanded(
                  child: Text(
                'Any',
                style: TextStyle(
                    color: const Color(0xff808080),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Container(
            height: 1,
            color: const Color(0xffd0d0d1),
          ),
          (horses == true)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (horses == true)
              ? Row(
                  children: [
                    Text(
                      'Venue:',
                      style: TextStyle(
                          color: const Color(0xff1c2d4b),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Expanded(
                        child: Text(
                      'Any',
                      style: TextStyle(
                          color: const Color(0xff808080),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ))
                  ],
                )
              : Container(),
          (horses == true)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (horses == true)
              ? Container(
                  height: 1,
                  color: const Color(0xffd0d0d1),
                )
              : Container(),
          (horses == true)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (horses == true)
              ? Row(
                  children: [
                    Text(
                      'Country:',
                      style: TextStyle(
                          color: const Color(0xff1c2d4b),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Expanded(
                        child: Text(
                      'Any',
                      style: TextStyle(
                          color: const Color(0xff808080),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ))
                  ],
                )
              : Container(),
          (horses == true)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (horses == true)
              ? Container(
                  height: 1,
                  color: const Color(0xffd0d0d1),
                )
              : Container()
        ],
      ),
    );
  }

  Widget PerformanceFilter() {
    return Container(
      color: const Color(0xfff2f1f6),
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(children: [
            Text(
              'Performance',
              style: TextStyle(
                  color: const Color(0xff013277),
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(0xff013277),
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          (widget.Clearround == true)
              ? Row(
                  children: [
                    Text(
                      'Clear round percentage:',
                      style: TextStyle(
                          color: const Color(0xff1c2d4b),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Expanded(
                        child: Text(
                      'Any',
                      style: TextStyle(
                          color: const Color(0xff808080),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ))
                  ],
                )
              : Container(),
          (widget.Clearround == true)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (widget.Clearround == true)
              ? Container(
                  height: 1,
                  color: const Color(0xffd0d0d1),
                )
              : Container(),
          (widget.Clearround)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (widget.Clearround == false)
              ? Row(
                  children: [
                    Text(
                      'Placement:',
                      style: TextStyle(
                          color: const Color(0xff1c2d4b),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Expanded(
                        child: Text(
                      'Any',
                      style: TextStyle(
                          color: const Color(0xff808080),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ))
                  ],
                )
              : Container(),
          (widget.Clearround == false)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (widget.Clearround == false)
              ? Container(
                  height: 1,
                  color: const Color(0xffd0d0d1),
                )
              : Container(),
          (widget.Clearround == false)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (widget.Clearround == false)
              ? Row(
                  children: [
                    Text(
                      'Placement Percentage:',
                      style: TextStyle(
                          color: const Color(0xff1c2d4b),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Expanded(
                        child: Text(
                      'Any',
                      style: TextStyle(
                          color: const Color(0xff808080),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ))
                  ],
                )
              : Container(),
          (widget.Clearround == false)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (widget.Clearround == false)
              ? Container(
                  height: 1,
                  color: const Color(0xffd0d0d1),
                )
              : Container(),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget HorseFilter() {
    return Container(
      color: const Color(0xfff2f1f6),
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(children: [
            Text(
              'Horsers',
              style: TextStyle(
                  color: const Color(0xffc63f2a),
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(0xffc63f2a),
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Row(
            children: [
              Text(
                'Age:',
                style: TextStyle(
                    color: const Color(0xff1c2d4b),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.030,
              ),
              Expanded(
                  child: Text(
                'Any',
                style: TextStyle(
                    color: const Color(0xff808080),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.019),
              ))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Container(
            height: 1,
            color: const Color(0xffd0d0d1),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          (widget.horses == true)
              ? Row(
                  children: [
                    Text(
                      'Sort by:',
                      style: TextStyle(
                          color: const Color(0xff1c2d4b),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Expanded(
                        child: Text(
                      'Clear round',
                      style: TextStyle(
                          color: const Color(0xff808080),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height * 0.019),
                    ))
                  ],
                )
              : Container(),
          (widget.horses == true)
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                )
              : Container(),
          (widget.horses == true)
              ? Container(
                  height: 1,
                  color: const Color(0xffd0d0d1),
                )
              : Container(),
        ],
      ),
    );
  }
}

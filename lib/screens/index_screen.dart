import 'package:cached_network_image/cached_network_image.dart';
import 'package:dolen_teros/themes/color_library.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' as ui;

class IndexScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    buildTitleBar() {
      return Container(
        width: screenSize.width,
        padding: EdgeInsets.all(20),
        child: Text(
          'Dolen Teros',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: ColorLibrary.dark,
              letterSpacing: 5,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: ColorLibrary.dark.withOpacity(0.5),
                  offset: Offset(4, 4),
                ),
              ]
          ),
        )
      );
    }

    buildHeader() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Flexible(
              flex: 14,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: ColorLibrary.whiteWash,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38.withOpacity(0.1),
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset(0, 4)
                    )
                  ]
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 8,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Lake Laogai ...',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0)
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: ColorLibrary.ambrosiaCake,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/id/200/400/200'),
                    fit: BoxFit.cover
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38.withOpacity(0.1),
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset(0, 4)
                    )
                  ]
                ),
              ),
            )
          ],
        ),
      );
    }

    buildDestinationItem(String imageURL) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenSize.width * 0.7,
              height: screenSize.height * 0.6,
              margin: EdgeInsets.only(top: 15, bottom: 20),
              decoration: BoxDecoration(
                  color: ColorLibrary.whiteWash,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(imageURL),
                      fit: BoxFit.cover
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 0,
                        offset: Offset(5, 9)
                    )
                  ]
              ),
              child: Container(
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: 10,
                      right: 10,
                      child: FloatingActionButton(
                        mini: true,
                        child: FaIcon(
                            FontAwesomeIcons.heart,
                            size: 17,
                            color: ColorLibrary.cherryBlossomPink
                        ),
                        elevation: 8,
                        backgroundColor: ColorLibrary.whiteWash,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: Chip(
                        padding: EdgeInsets.all(0),
                        elevation: 8,
                        labelStyle: TextStyle(
                            fontSize: 13,
                            color: ColorLibrary.dark.withAlpha(200),
                            fontWeight: FontWeight.bold
                        ),
                        labelPadding: EdgeInsets.only(right: 10),
                        backgroundColor: ColorLibrary.whiteWash,
                        avatar: FaIcon(
                            FontAwesomeIcons.star,
                            size: 10,
                            color: ColorLibrary.yellow
                        ),
                        label: Text('4k'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lorem Ipsum Dolor Sit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ColorLibrary.dark
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: Text(
                      'Lorem, Dolor Sit',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          color: ColorLibrary.dark.withAlpha(180)
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    buildDestinationList() {
      final destinationList = [];

      return Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20),
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Most Visited Place',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: ColorLibrary.dark
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  buildDestinationItem('https://placeimg.com/480/720/nature/231'),
                  SizedBox(width: 40),
                  buildDestinationItem('https://placeimg.com/480/720/nature/1289'),
                  SizedBox(width: 40),
                  buildDestinationItem('https://placeimg.com/480/720/nature/3252'),
                  SizedBox(width: 40),
                  buildDestinationItem('https://placeimg.com/480/720/nature/1243'),
                  SizedBox(width: 40),
                  buildDestinationItem('https://placeimg.com/480/720/nature/2188'),
                  SizedBox(width: 40),
                  buildDestinationItem('https://placeimg.com/480/720/nature/3222'),
                  SizedBox(width: 20),
                ],
              )
            ],
          ),
        ),
      );
    }

    buildContent() {
      return Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitleBar(),
              buildHeader(),
              SizedBox(height: 20),
              buildDestinationList()
            ],
          ),
        ),
      );
    }

    buildScreen() {
      return Scaffold(
        backgroundColor: ColorLibrary.whiteWash,
        body: buildContent(),
      );
    }

    return buildScreen();

  }

}
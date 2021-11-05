// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:instagram_clone_ui/src/ui/widgets/navigation_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Stack(
          children: [
            // Background
            Container(
              color: Colors.grey[200],
            ),
            // Content
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Custom appbar
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                color: const Color(0xFFE0E0E0),
                              ),
                            )),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 140,
                              // color: Colors.red,
                              child: Image.asset(
                                  "assets/images/instagram_font.png"),
                            ),
                            Spacer(),
                            Container(
                              height: 40,
                              width: 40,
                              child: Bounceable(
                                onTap: () {},
                                child: Icon(
                                  Icons.add_box_outlined,
                                  // size: 30,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 40,
                              width: 40,
                              child: Bounceable(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  // size: 30,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 40,
                              width: 40,
                              child: Bounceable(
                                onTap: () {},
                                child: Icon(
                                  Icons.message_outlined,
                                  // size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        child: ListView(
                          children: [
                            // Content
                            Container(
                              height: MediaQuery.of(context).size.height,
                              width: double.infinity,
                              child: ListView.builder(
                                  itemCount: 15,
                                  itemBuilder: (context, i) {
                                    if (i == 0) {
                                      // Story
                                      return Container(
                                          width: double.infinity,
                                          height: 120,
                                          color: Colors.white,
                                          margin: EdgeInsets.only(bottom: 7),
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 15,
                                              itemBuilder: (context, i) {
                                                return Container(
                                                  child: Bounceable(
                                                    onTap: () {},
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          10),
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(3),
                                                              width: 75,
                                                              height: 75,
                                                              decoration: (i >
                                                                      0)
                                                                  ? BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        colors: [
                                                                          const Color(
                                                                              0xFFFFAA65),
                                                                          const Color(
                                                                              0xE8D14200),
                                                                        ],
                                                                        begin: const FractionalOffset(
                                                                            0.0,
                                                                            1.0),
                                                                        end: const FractionalOffset(
                                                                            1.0,
                                                                            0.0),
                                                                        stops: [
                                                                          0.0,
                                                                          1.0
                                                                        ],
                                                                        tileMode:
                                                                            TileMode.clamp,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              100))
                                                                  : BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              100)),
                                                              child: Container(
                                                                width: 70,
                                                                height: 70,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        image:
                                                                            DecorationImage(
                                                                          image: NetworkImage((i == 0)
                                                                              ? "https://scontent-sin6-1.cdninstagram.com/v/t51.2885-19/s150x150/28434791_820486071471943_5157891672478056448_n.jpg?_nc_ht=scontent-sin6-1.cdninstagram.com&_nc_cat=107&_nc_ohc=kxx23sV1YrAAX-gxvnB&edm=ABfd0MgBAAAA&ccb=7-4&oh=8bab393d943d29607dd2c495982f6c58&oe=618C0961&_nc_sid=7bff83"
                                                                              : "https://picsum.photos/id/2$i/200"),
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        border: Border.all(
                                                                            width:
                                                                                1,
                                                                            color: Colors
                                                                                .white),
                                                                        borderRadius:
                                                                            BorderRadius.circular(100)),
                                                              ),
                                                            ),
                                                            (i == 0)
                                                                ? Container(
                                                                    margin: EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            10),
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(3),
                                                                    width: 75,
                                                                    height: 75,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child:
                                                                        Container(
                                                                      decoration: BoxDecoration(
                                                                          color: Colors
                                                                              .white,
                                                                          borderRadius:
                                                                              BorderRadius.circular(100)),
                                                                      child: Icon(
                                                                          Icons
                                                                              .add_circle_rounded,
                                                                          color:
                                                                              Colors.blue),
                                                                    ),
                                                                  )
                                                                : Container()
                                                          ],
                                                        ),
                                                        SizedBox(height: 5),
                                                        Text(
                                                          (i == 0)
                                                              ? "Your Story"
                                                              : "user_$i",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: (i == 0)
                                                                  ? Colors.grey
                                                                  : Colors
                                                                      .black),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }));
                                    }
                                    return Container(
                                      height: 450,
                                      margin: EdgeInsets.only(bottom: 10),
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          // Content header
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            height: 50,
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: NetworkImage(
                                                            "https://picsum.photos/id/2${i + 1}/200"),
                                                        fit: BoxFit.contain,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100)),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "user_${i + 1}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Spacer(),
                                                Container(
                                                  width: 35,
                                                  child: Bounceable(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.more_vert_rounded,
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          // Content image
                                          Container(
                                            width: double.infinity,
                                            height: 250,
                                            child: Image.network(
                                                "https://picsum.photos/id/1$i/200",
                                                fit: BoxFit.cover),
                                          ),
                                          // SizedBox(height: 10),
                                          // Content icon
                                          Container(
                                            height: 50,
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 40,
                                                  child: Bounceable(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons
                                                          .favorite_border_outlined,
                                                      size: 28,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 40,
                                                  child: Bounceable(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons
                                                          .mode_comment_outlined,
                                                      size: 28,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 40,
                                                  child: Bounceable(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.send_outlined,
                                                      size: 28,
                                                    ),
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  width: 40,
                                                  child: Bounceable(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons.bookmark_border,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10)
                                              ],
                                            ),
                                          ),
                                          // Content description
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            width: double.infinity,
                                            height: 50,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text: "Liked by ",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: 'user_2',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600)),
                                                      TextSpan(text: " and "),
                                                      TextSpan(
                                                          text: '123 others',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600)),
                                                    ],
                                                  ),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    text: "user_${i + 1}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              " Lorem ipsum..... ",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                    ],
                                                  ),
                                                ),
                                                Text("#lorem #ipsum #dolor",
                                                    style: TextStyle(
                                                        color:
                                                            Colors.blue[600])),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            width: double.infinity,
                                            height: 30,
                                            alignment: Alignment.centerLeft,
                                            child: Bounceable(
                                              onTap: () {},
                                              child: Text(
                                                "View all 10 comments",
                                                style: TextStyle(
                                                    color: Colors.grey[500]),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

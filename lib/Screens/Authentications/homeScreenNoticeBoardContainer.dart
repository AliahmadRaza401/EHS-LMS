import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomCard(BuildContext context, String titleImage, heading, subheading,
    cardImage, cardHeading, cardSubheading, cardDate, cardLink) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  titleImage,
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .038,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .04,
            ),
            Column(
              children: [
                AutoSizeText(
                  heading,
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .04,
            ),
            Column(
              children: [
                AutoSizeText(
                  subheading,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ],
        ),
      ),
      Stack(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                margin: EdgeInsets.only(
                  bottom: 14.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .12,
                          child: Image.asset(
                            cardImage,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .02,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .44,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                cardLink,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xff138F8F),
                                ),
                                maxLines: 1,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: AutoSizeText(
                                  cardHeading,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color(0xff14514D),
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0xff14514D),
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  AutoSizeText(
                                    cardDate,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Color(0xff14514D),
                                    ),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .02,
                              ),
                              Column(
                                children: [
                                  AutoSizeText(
                                    cardSubheading,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color(0xff14514D),
                                    ),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 0.0,
            top: MediaQuery.of(context).size.height * .043,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .15,
                  height: MediaQuery.of(context).size.height * .034,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Color(0xff6EB7C6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          "See All",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

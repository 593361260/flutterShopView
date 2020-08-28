import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

Container headerSearchBox(Size size) {
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    height: size.height * 0.2, //屏幕总高度的20%
    child: Stack(
      children: <Widget>[
        Container(
          height: size.height * 0.2 - 27,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(36),
                bottomLeft: Radius.circular(36),
              )),
        ),
        //Positioned 用在Stack 中随处可放的位置
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: kDoublePadding),
            width: size.width,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: kPrimaryColor.withOpacity(0.23),
                      offset: Offset(0, 10),
                      blurRadius: 10)
                ]),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle:
                            TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: SvgPicture.asset("assets/icons/search.svg"),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text(
                "Hi UiShop!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              margin: EdgeInsets.only(left: 20),
            ),
            Spacer(),
            Container(
              child: Image.asset("assets/images/logo.png"),
              margin: EdgeInsets.only(right: 20),
            ),
          ],
        )
      ],
    ),
  );
}

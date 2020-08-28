import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterdemo/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          buildDetailsTop(size, context),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "多肉植物\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "来自中国",
                        style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ]),
                ),
                Spacer(),
                Text(
                  "阿哈\n",
                  style: TextStyle(
                    color: kPrimaryColor.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    inherit: false,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 60,
            child: Row(
              children: <Widget>[
                Container(
                  width: size.width * 0.5,
                  height: 60,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30))),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "购买",
                      style: TextStyle(inherit: false,fontSize: 18),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "更多信息",
                      style: TextStyle(
                          inherit: false, color: Colors.black, fontSize: 18),
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

  Container buildDetailsTop(Size size, BuildContext context) {
    return Container(
      height: size.height * 0.75,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        buildDetailsButton(size, "assets/icons/sun.svg"),
                        buildDetailsButton(size, "assets/icons/icon_2.svg"),
                        buildDetailsButton(size, "assets/icons/icon_3.svg"),
                        buildDetailsButton(size, "assets/icons/icon_4.svg")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          buildCover(size),
        ],
      ),
    );
  }

  GestureDetector buildDetailsButton(Size size, String assetsPath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: size.width * 0.15,
        height: size.width * 0.15,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(5, 5),
                  color: kPrimaryColor.withOpacity(0.23),
                  blurRadius: 10)
            ]),
        child: Container(
          padding: EdgeInsets.all(15),
          child: SvgPicture.asset(
            assetsPath,
          ),
        ),
      ),
    );
  }

  Container buildCover(Size size) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: size.width * 0.75,
      height: size.height * 0.75,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(-2, 4),
                color: kPrimaryColor.withOpacity(0.23),
                blurRadius: 30)
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
          image: DecorationImage(
              image: AssetImage("assets/images/img.png"),
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft)),
    );
  }
}

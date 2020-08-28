import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterdemo/component/body.dart';
import 'package:flutterdemo/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: () {
              print("点击菜单按钮");
            },
          ),
        ),
        body: Body(),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: kDoublePadding),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                offset: Offset(0, -5),
                color: kPrimaryColor.withOpacity(0.23),
                blurRadius: 10)
          ]),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SvgPicture.asset("assets/icons/flower.svg"),
              SvgPicture.asset("assets/icons/heart-icon.svg"),
              SvgPicture.asset("assets/icons/user-icon.svg"),
            ],
          ),
        ));
  }
}

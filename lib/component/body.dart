import 'package:flutter/material.dart';
import 'package:flutterdemo/screen/home/compenents/feature_plant_view.dart';
import 'package:flutterdemo/screen/home/compenents/home_title.dart';
import 'package:flutterdemo/screen/home/compenents/recommend_card_view.dart';

import '../screen/home/compenents/home_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          headerSearchBox(size),
          BuildUnderLineWidget(title: "推荐"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecommendCard(
                  from: "中国",
                  price: "199",
                  name: "芦荟",
                  cover: "assets/images/image_1.png",
                ),
                RecommendCard(
                  from: "美国",
                  price: "199",
                  name: "绿箩",
                  cover: "assets/images/image_2.png",
                ),
                RecommendCard(
                  from: "鸿运当头",
                  price: "199",
                  name: "农村",
                  cover: "assets/images/image_3.png",
                ),
              ],
            ),
          ),
          BuildUnderLineWidget(title: "你可能会喜欢"),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  FeatureCover(cover: "assets/images/bottom_img_1.png"),
                  FeatureCover(cover: "assets/images/bottom_img_2.png"),
                ],
              ))
        ],
      ),
    );
  }
}

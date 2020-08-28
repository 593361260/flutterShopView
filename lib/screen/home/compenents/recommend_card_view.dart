import 'package:flutter/material.dart';
import 'package:flutterdemo/details/components/details_shop.dart';

import '../../../constants.dart';

class RecommendCard extends StatelessWidget {
  final String from;
  final String price;
  final String name;
  final String cover;

  const RecommendCard({Key key, this.from, this.price, this.name, this.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailsScreen();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: kPrimaryColor.withOpacity(0.23),
                  offset: Offset(2, 10),
                  blurRadius: 30)
            ],
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(bottom: kDoublePadding, left: 20, top: 10),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(
              cover,
              fit: BoxFit.cover,
              width: size.width * 0.4,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$name\n",
                          style: TextStyle(
                              color: kTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "$from",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.6),
                            fontSize: 13,
                          )),
                    ]),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      "\$$price\n",
                      style: TextStyle(color: kTextColor),
                    ),
                    padding: EdgeInsets.only(top: 0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

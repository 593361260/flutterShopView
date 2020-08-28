import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuildUnderLineWidget extends StatelessWidget {
  final title;

  BuildUnderLineWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildUnderLine(title);
  }

  Widget _buildUnderLine(title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 23,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: kDoublePadding / 4),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 20, //20大小是要与高度类似
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(right: kDoublePadding / 4),
                    child: Container(
                      height: 7,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ),
                )
              ],
            ),
          ),
//          BuildUnderLineWidget(title: "Recommended"),
          Spacer(),
          FlatButton(
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              "More",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ],
      ),
    );
  }
}

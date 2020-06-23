import 'package:flutter/material.dart';

class ListMenuItem extends StatelessWidget {
  final String _title;
  final IconData _icon;

  ListMenuItem(this._title, this._icon);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: Colors.grey, width: 0.5),
                bottom: BorderSide(color: Colors.grey, width: 0.5))),
        child: FlatButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Text(
              _title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Container(
              width: 30,
              height: 50,
              child: Icon(_icon),
            )
          ]),
        ),
      ),
    ]);
  }
}

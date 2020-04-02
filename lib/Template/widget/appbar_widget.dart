import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  AppBarWidget({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text(
        'Book',
        style: TextStyle(color: Colors.blue),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                print('button search');
              }),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('button search');
              }),
        ),
      ],
    );
  }
}

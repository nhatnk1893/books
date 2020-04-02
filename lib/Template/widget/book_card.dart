import 'package:flutter/material.dart';
import 'package:web_bi/core/models/book.dart';

class BookCard extends StatelessWidget {
  final String img;
  final Book book;
  final double sizeWidth;
  BookCard({
    Key key,
    @required this.img,
    @required this.book,
    @required this.sizeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        elevation: 4,
        child: InkWell(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          onTap: () {},
          child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Container(
                constraints: new BoxConstraints.expand(
                  height: 240.0,
                ),
                alignment: Alignment.bottomLeft,
                padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
                child: new Text('${book.name}',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    )),
              )),
        ),
      ),
    );
  }
}

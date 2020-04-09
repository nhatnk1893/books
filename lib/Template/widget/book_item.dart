import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:web_bi/Template/screen/detail.dart';
import 'package:web_bi/core/models/book.dart';

class BookListItem extends StatelessWidget {
  final String img;
  final String title;
  final String author;

  final Book book;

  BookListItem({
    Key key,
    @required this.img,
    @required this.title,
    @required this.author,
    @required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            child: Detail(
              img: img,
              author: author,
              title: title,
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        child: new Material(
          color: Colors.white,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.blueAccent[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 140,
                height: 100,
                child: ClipRRect(
                    child: Container(
                  constraints: new BoxConstraints.expand(
                    height: 100.0,
                  ),
                  alignment: Alignment.bottomLeft,
                  padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)),
                    image: new DecorationImage(
                      image: new AssetImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        child: Text(
                          title,
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 18.0),
                        ),
                        padding: EdgeInsets.only(top: 8.0),
                      ),
                      Divider(),
                      Text(
                        author,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:web_bi/Template/widget/appbar_widget.dart';
import 'package:web_bi/Template/widget/book_card.dart';
import 'package:web_bi/core/data/fake_data.dart';
import 'package:web_bi/core/models/book.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                )),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                      child: Center(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 6.0),
                            child: Text('Top truyện xem nhiều',
                                style: TextStyle(color: Colors.blue))),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Container(
                      height: 210,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: books.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            Book _book = books[index];
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: BookCard(
                                img: _book.urlThumnail,
                                book: _book,
                                sizeWidth: 160,
                              ),
                            );
                          })),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:web_bi/Template/widget/book_item.dart';
import 'package:web_bi/core/data/fake_data.dart';
import 'package:web_bi/core/models/book.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: books.length,
            itemBuilder: (BuildContext context, int index) {
              Book _book = books[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: BookListItem(
                  img: _book.urlThumnail,
                  title: _book.name,
                  author: _book.author,
                  book: _book,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

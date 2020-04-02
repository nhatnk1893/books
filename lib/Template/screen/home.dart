import 'package:flutter/material.dart';
import 'package:web_bi/Template/widget/appbar_widget.dart';
import 'package:web_bi/Template/widget/book_card.dart';
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
      appBar: AppBarWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 90,
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(90.0),
                    bottomRight: Radius.circular(90.0)),
              ),
              padding:
                  const EdgeInsets.only(right: 30.0, left: 30.0, top: 12.0),
              child: TextField(
                enabled: true, //
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintText: 'Tìm kiếm',
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(70.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(70.0)),
                    borderSide: BorderSide(width: 1, color: Colors.blue),
                  ),
                ),
                controller: myController,
                onChanged: (text) {
                  print("First text field: $text");
                },
              ),
            ),
          ),
          Container(
            height: 300,
            padding: EdgeInsets.only(top: 12.0),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
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
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500))),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Container(
                      height: 240,
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
                                sizeWidth: 190,
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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                      child: Text('Top truyện xem nhiều',
                          style: TextStyle(color: Colors.blue))),
                ),
              ],
            ),
          ),
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

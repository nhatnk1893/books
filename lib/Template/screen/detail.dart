import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:web_bi/Template/screen/home.dart';

class Detail extends StatefulWidget {
  final String img;
  final String title;
  final String author;

  const Detail({Key key, this.img, this.title, this.author}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(FeatherIcons.download), onPressed: null),
          IconButton(icon: Icon(FeatherIcons.share2), onPressed: null)
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(widget.img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          Container(
            decoration:
                new BoxDecoration(color: Theme.of(context).primaryColor),
            child: new TabBar(
              controller: _controller,
              tabs: [
                new Tab(
                  text: 'SCRIPT',
                ),
                new Tab(
                  text: 'VOCAB/GRAMMAR',
                ),
              ],
            ),
          ),
          Container(
            height: 1000,
            child: new TabBarView(
              controller: _controller,
              children: <Widget>[
                Text('''Ladykillal
Uh
Can you feel me
Uh.!!!
Youngpilots
Uh Ok!!!!
Eh.Eh.Eh.
Cơn mưa ngang qua
Cơn mưa đi ngang qua
Đừng làm rơi thêm, thêm, thêm, nhiều giọt lệ uh... uh...
Còn đâu đây bao câu ca anh tặng em.
Tình yêu em mang cuốn lấp đi bao nhiêu câu ca.
Và còn lại đây, đôi môi đau thương trong màn đêm.
Phải lẻ loi, gồng mình bước qua niềm đau khi em rời xa...!!!!!!
Cơn mưa rồi lại thêm, lại thêm, lại thêm.
Xé đi không gian ngập tràn nụ cười.
Nhìn lại nơi đây, bao kỉ niệm giờ chìm xuống dưới hố sâu vì em... T.T
Chính em đã đổi thay.
Và đôi bàn tay ấm êm, ngày nào còn lại giữ.
Vì em... Vì em...!!!!
Vì em đã xa rồi, tình anh chìm trong màn đêm.
Là vì em đã quên rồi, tình anh chỉ như giấc mơ.
Em bước đi rồi.Ôi bao cơn mưa.
Em bước đi rồi.Xin hãy xua tan đi em, bóng dáng hình em.Em đã mãi rời xa...!!!
My girl.Em quên đi bao nhiêu.
My girl.Em quên đi bao lâu.
My girl.Em quên đi cuộc tình mà anh trao em, thôi thôi em đi đi đã hết rồi...!
My girl.Em quên đi bao nhiêu.
My girl.Em quên đi bao lâu.
My girl.Em quên đi cuộc tình.Em quên.quên.quên.
Yeah...???
Cơn mưa ngang qua mang em đi xa.
Cơn mưa ngang qua khiến em nhạt nhòa.
Chẳng một lời chào người vội rời bỏ đi không chia li cho con tim anh thêm bao yếu mềm...!
Cơn mưa ngang qua cuốn đi bao yêu thương.
Cơn mưa ngang qua khiến con tim mất phương hướng...
Cơn mưa Kia nặng hạt, ôi mưa thêm nặng hạt.
Em đã rời xa đôi bàn tay trong con tim của anh.
Buông lơi bàn tay em đi, em đi rời xa bên tôi người ơi.
Và buông lơi giấc mơ em cho, em cho con tim tôi đau biết mấy...
Thôi cũng đã đến hồi kết.thật rồi mà người!
Thôi cũng đá đến hồi kết.Đừng nhìn làm gì!
Anh sẽ quên đi một ai, ai, ai, và rồi làm ngơ, ngơ, ngơ, uh
Vì em đã xa rồi, tình anh chìm trong màn đêm.
Là vì em đã quên rồi, tình anh chỉ như giấc mơ.
Em bước đi rồi.Ôi bao cơn mưa.
Em bước đi rồi.Xin hãy xua tan đi em, bóng dáng hình em.Em đã mãi rời xa...!!!
My girl.Em quên đi bao nhiêu.
My girl.Em quên đi bao lâu.
My girl.Em quên đi cuộc tình mà anh trao em, thôi thôi em đi đi đã hết rồi...!
My girl.Em quên đi bao nhiêu.
My girl.Em quên đi bao lâu.
My girl.Em quên đi cuộc tình.Em quên.quên.quên.
Và rồi em đi qua bước qua.
Ở lại chốn đây với bao u buồn.
Để rồi tháng trôi qua, rồi năm trôi qua, thoáng qua.oh... oh.oh.!!!!
Nụ cười em đang ở đâu, người ơi.Ở đâu.????
Và bờ môi em đang ở đâu, anh tìm.
Lục tìm ma không thấy.Nụ cười em.
Người hãy nói trả lời đi.Vì sao em đi đi quên đi bao nhiêu giấc mơ... Bên anh xưa kia.???
Cơn mưa cẫn rơi.rơi rơi.
Cơn cơn mưa vẫn rơi... rơi rơi.
Cơn cơn mưa vẫn rơi... rơi rơi.
Cơn cơn mưa vẫn rơi... rơi rơi.
Cơn mưa cẫn rơi.rơi rơi.
Cơn cơn mưa vẫn rơi... rơi rơi.
Cơn cơn mưa vẫn rơi... rơi rơi.
Cơn cơn mưa vẫn rơi... rơi rơi.
My girl.Em quên đi bao nhiêu.
My girl.Em quên đi bao lâu.
My girl.Em quên đi cuộc tình mà anh trao em, thôi thôi em đi đi đã hết rồi...!
My girl.Em quên đi bao nhiêu.
My girl.Em quên đi bao lâu.
My girl.Em quên đi cuộc tình.Em quên.quên.quên.!
Em quên mất rồi...!!!!'''),
                new Card(
                  child: new ListTile(
                    leading: const Icon(Icons.location_on),
                    title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: new IconButton(
                        icon: const Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

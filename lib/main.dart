import 'package:eudeka_task1/models/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eudeka - OSG4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Eudeka - OSG4'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: <Widget>[
            ...newsItems()
          ],
        ),
      ),
    );
  }

  List<Widget> newsItems(){
    return newsDatum.map((news){
      return newsItem(news); 
    }).toList();
  }

  Widget newsItem(News news){
    return Card(
      child: InkWell(
        onTap: (){
          print("Item Clicked");
        },
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
                child: Image.network(news.imgUrl, fit:BoxFit.cover, height: 250, width: double.infinity,)
            ),
            newsItemContent(news)
          ],
        ),
      ),
    );
  }

  Widget newsItemContent(News news){
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          newsItemHeader(news.title, news.published_date, news.published_time),
          Padding(
            padding: EdgeInsets.only(
              top: 10
            ),
            child: Text(news.content),
          )
        ],
      ),
    );
  }

  Widget newsItemHeader(title,published_date, published_time){
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: TextStyle(fontSize: 32),),
                Text(published_date, style: TextStyle(fontSize: 20, color: Colors.grey)),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.topRight,
            child: Text(published_time,style: TextStyle(fontSize: 32),),
          ),
        )
        
      ],
    );
  }
}

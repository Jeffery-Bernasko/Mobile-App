import 'package:flutter/material.dart';
import 'package:newsapp/data.dart';
import 'package:provider/provider.dart';
import 'detail.dart';

class AllNews extends StatefulWidget {
  @override
  _AllNewsState createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  List data = ['one', 'two', 'three', 'four'];

  @override
  Widget build(BuildContext context) {
    NewsData newsData = Provider.of<NewsData>(context);
    // print(newsData.news);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("News App",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
          child: FutureBuilder(
        future: newsData.getNews,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<dynamic> data = snapshot.data;
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail(data: data[index]),
                              ));
                        },
                        title: Text(data[index]["title"]),
                      ),
                      Divider()
                    ],
                  );
                });
          } else {
            return Center(child: Text("Loading..."));
          }
        },
      )),
    );
  }
}

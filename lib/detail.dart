import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final dynamic data;
  Detail({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(data['title'])),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 200,
                child: Image.network(data['image'].toString()),
              ),
              Container(
                //TITLE
                child: Text(data['title']),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //PUBLISHER
                  Text(data['publisher']),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                //STORY DETAILS
                child: Text(data['text']),
              )
            ],
          ),
        ));
  }
}

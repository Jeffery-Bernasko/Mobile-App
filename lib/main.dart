import 'package:flutter/material.dart';
import 'package:newsapp/data.dart';
import 'package:newsapp/news.dart';
import 'package:provider/provider.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (BuildContext context) => NewsData(),
        child: AllNews()
        ),
    );
  }
}
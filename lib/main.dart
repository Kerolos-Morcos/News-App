import 'package:flutter/material.dart';
import 'package:news_app/views/news_view.dart';

void main() async{
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsView(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SingleNewsView extends StatefulWidget {
  const SingleNewsView({super.key, required this.article});
  final ArticleModel article;

  @override
  State<SingleNewsView> createState() => _SingleNewsViewState();
}

class _SingleNewsViewState extends State<SingleNewsView> {
  final controller = WebViewController();

  @override
  void initState() {
    super.initState();
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.article.newsUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Details'),
      ),
      body: Center(
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}

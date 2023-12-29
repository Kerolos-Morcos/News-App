class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String newsUrl;
  const ArticleModel(
      {required this.newsUrl,
      required this.image,
      required this.title,
      required this.subTitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      newsUrl: json['url'],
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}

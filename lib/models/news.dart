class News {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  News(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  News.fromJson(Map<String, dynamic> json) {
    author = json['author'] ?? 'John Gold';
    title = json['title'] ?? 'Who is he?';
    description = json['description'] ?? 'there are no any description yet';
    url = json['url'] ?? 'https://www.google.com/';
    urlToImage = json['urlToImage'] ??
        'https://assets.turbologo.com/blog/en/2019/09/19085012/google-first-logo-1997.png';
    publishedAt = json['publishedAt'] ?? '2022-02-22T16:30:00Z';
    content = json['content'] ?? 'there are no any content yet';
  }
}

class NewsItem {
  final String imageUrl;
  final String headline;
  final String url;
  final String publicationDate;

  NewsItem({
    required this.imageUrl,
    required this.headline,
    required this.url,
    required this.publicationDate,
  });

  // Method to parse data into NewsItem
  factory NewsItem.fromJson(Map<String, dynamic> json) {
    return NewsItem(
      imageUrl: json['imageUrl'],
      headline: json['headline'],
      url: json['url'],
      publicationDate: json['publicationDate'],
    );
  }
}

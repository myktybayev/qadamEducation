import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String photo;
  final String title;
  final String date;

  const NewsItem({
    super.key,
    required this.photo,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Titlte $photo'),
      subtitle: Text('Subtitle $date'),
    );
  }
}

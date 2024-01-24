import 'package:flutter/material.dart';
import 'package:qadam_education/features/news/widgets/news_item.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const NewsItem(photo: 'photo', title: 'Title', date: 'now');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Жаңалық енгізу',
        child: const Icon(Icons.add),
      ),
    );
  }
}

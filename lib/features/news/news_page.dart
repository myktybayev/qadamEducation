import 'package:flutter/material.dart';

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
            return newsItem(title: 'Title');
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

  Widget newsItem({photo, title, date}) {
    return ListTile(
      title: const Text('Titlte'),
      subtitle: Text('Subtitle $date'),
    );
  }
}

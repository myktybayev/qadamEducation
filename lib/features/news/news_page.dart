import 'package:flutter/material.dart';
import 'package:qadam_education/features/news/widgets/new_screen.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 16),
            width: 109,
            height: 24,
            child: Text(
              'Іс-шаралар',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Color(0xFF610683),
                height: 24 / 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 16),
            width: 193,
            height: 24,
            child: Text(
              'Ата аналар жиналысы',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 16,
                color: Color(0xFF711F8F),
                height: 24 / 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16),
            width: 193,
            height: 24,
            child: Text(
              '19:00 - 20:00',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Color(0xFF711F8F),
                height: 24 / 16,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 16),
                width: 193,
                height: 24,
                child: Text(
                  'Жаңалықтар',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Color(0xFF711F8F),
                    height: 24 / 16,
                  ),
                ),
              ),
              SizedBox(width: 100),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewScreen()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 16, top: 50),
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Color(0xFF711F8F),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 16),
            width: 360,
            height: 277,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/image.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 15),
            width: 102,
            height: 18,
            child: Text(
              'Айша Бибі',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: Colors.black,
                height: 18 / 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 17),
            width: 339,
            height: 66,
            child: Text(
              '12 қараша күні сағат 13:00 - де Айша бибі кесенесіне саяхат болатынын хабарлаймыз',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.black,
                height: 22 / 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
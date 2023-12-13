import 'package:flutter/material.dart';
import 'package:qadam_education/constants/app_color.dart';
import 'package:qadam_education/features/home/models/tapsyrma.dart';

class Tapsyrmalar extends StatelessWidget {
  Tapsyrmalar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _customText(
              text: 'Тапсырмалар',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: AppColor.mainColor),
        ),
        _buildGridTapsyrma(),
      ],
    );
  }

  final List<Tapsyrma> _tapsyrmaList = [
    Tapsyrma(
      title: 'Математика',
      desc: 'үй тапсырмасы',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor1,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor2,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor3,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor4,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor4,
    ),
    Tapsyrma(
      title: 'Math',
      desc: 'hw',
      date: '12.12',
      photo: 'url',
      backgroundColor: AppColor.tapsyrmaColor4,
    ),
  ];

  Widget _buildGridTapsyrma() {
    return Container(
      height: 290,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          childAspectRatio: 0.72,
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: _tapsyrmaList.length, // total number of items
        itemBuilder: (context, index) {
          return _gridItem(_tapsyrmaList[index]);
        },
      ),
    );
  }

  Widget _gridItem(Tapsyrma tapsyrma) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: tapsyrma.backgroundColor, // color of grid items
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _customText(text: tapsyrma.title, fontSize: 18.0),
                  _customText(text: tapsyrma.desc, fontSize: 16.0),
                  _customText(text: tapsyrma.date, fontSize: 16.0),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: 90,
              height: 90,
              child: Opacity(
                opacity: 0.8,
                child: Icon(
                  Icons.leaderboard_sharp,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _customText(
      {required String text,
      double fontSize = 14.0,
      fontWeight = FontWeight.normal,
      Color color = Colors.white}) {
    return Text(
      '$text',
      maxLines: 1,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

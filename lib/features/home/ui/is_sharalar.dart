import 'package:flutter/material.dart';
import 'package:qadam_education/constants/app_color.dart';

class IsSaharalar extends StatelessWidget {
  const IsSaharalar({super.key});

  @override
  Widget build(BuildContext context) {
    late Size mediaSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _isSharaTitle(),
          _isSharaList(),
        ],
      ),
    );
  }

  Widget _isSharaList() {
    return Container(
      height: 110,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _customText(
                text: 'Ата-аналар жиналысы',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor,
              ),
              _customText(
                text: '19:00 - 20:00',
                fontSize: 16.0,
                color: AppColor.mainColor,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _isSharaTitle() {
    return _customText(
      text: 'Іс-шаралар',
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: AppColor.mainColor,
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

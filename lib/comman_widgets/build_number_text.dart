import 'package:flutter/material.dart';
import 'package:qadam_education/features/zhurnal/widgets/point_list.dart';

class BuildNumberText extends StatelessWidget {
  final int index;
  const BuildNumberText({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      pointList[index]['number'].toString(),
      style: const TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: 35,
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

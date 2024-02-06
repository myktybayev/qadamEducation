import 'package:flutter/material.dart';
import 'package:qadam_education/features/zhurnal/widgets/point_list.dart';

class BuildCustomText extends StatelessWidget {
  final int index;
  const BuildCustomText({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pointList[index]['name'].toString(),
              maxLines: 1,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 18,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              pointList[index]['workname'].toString(),
              maxLines: 1,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.deepPurple,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:qadam_education/features/home/ui/is_sharalar.dart';
import 'package:qadam_education/features/home/ui/sabak_kestesi.dart';
import 'package:qadam_education/features/home/ui/tapsyrmalar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SabakKestesi(),
        Tapsyrmalar(),
        IsSaharalar(),
      ],
    );
  }
}

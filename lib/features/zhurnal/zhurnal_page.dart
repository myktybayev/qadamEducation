import 'package:flutter/material.dart';
import 'package:qadam_education/features/zhurnal/widgets/bagalar.dart';
import 'package:qadam_education/features/zhurnal/widgets/sabakka_katysu.dart';

class ZhurnalPage extends StatelessWidget {
  const ZhurnalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            tabs: <Widget>[
              Tab(text: 'Бағалар'),
              Tab(text: 'Сабаққа қатысу'),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Bagalar(),
              SabakkaKatysu(),
            ],
          ),
        ),
      ),
    );
  }
}

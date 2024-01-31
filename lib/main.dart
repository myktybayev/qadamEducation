import 'package:flutter/material.dart';
import 'package:qadam_education/features/chat/chat_list.dart';
import 'package:qadam_education/routing/app_roures.dart';
import 'package:qadam_education/routing/route_generator.dart';

void main() {
  runApp(MaterialApp(
    home: ChatList(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: AppRoutes.home,
      title: 'Qadam Education',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

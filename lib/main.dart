import 'package:flutter/material.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/result.dart';
import 'package:flutter_application_1/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomePage(),
      // initialRoute: '/',
      routes: {
        '/help': (context) => const HelpPage(),
        '/home': (context) => const WelcomePage(),
        '/quiz': (context) => const QuizePage(),
        '/result': (context) => const ResualtPage(),
      },
    );
  }
}

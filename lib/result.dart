import 'package:flutter/material.dart';

class ResualtPage extends StatelessWidget {
  const ResualtPage({super.key});

  @override
  Widget build(BuildContext context) {
    var data;
    data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(data['right'].toString()),
            ],
          ),
        ));
  }
}

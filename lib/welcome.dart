import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blueAccent,
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blueGrey])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Image.asset(
              "assets/09.jpg",
              width: 300,
            ),
            const SizedBox(
              height: 50.0,
            ),
            Image.asset(
              "assets/MrTabligh.jpg",
              width: 300.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: const ShapeDecoration(
                  // shape: BoxShape.circle,
                  shape: StadiumBorder(),
                  gradient: LinearGradient(colors: [
                    Colors.orangeAccent,
                    Color.fromARGB(255, 236, 187, 146)
                  ])),
              child: SizedBox(
                child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/quiz');
                    },
                    child: Text("Play")),
                width: 400,
                height: 60,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)))),
                onPressed: () {
                  Navigator.pushNamed(context, '/help');
                },
                child: const Text("How To Play",
                    style: TextStyle(
                        color: Color.fromARGB(255, 105, 99, 99), fontSize: 25)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

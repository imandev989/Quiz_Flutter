import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(229, 246, 253, 255),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: GestureDetector(
                  child: const Icon(Icons.arrow_back),
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
              Container(
                child: const Icon(Icons.search_outlined),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            width: 400,
            height: 700,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    "assets/09.jpg",
                    width: 350,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "How You \n            Fell World?",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,t consectetur adipisicing elit. Maxime mollitia,t consectetur adipisicing elit. Maxime mollitia,t consectetur adipisicing elit. Maxime mollitia,t consectetur adipisicing elit. Maxime mollitia,",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  height: 90.0,
                ),
                const Center(
                  child: Text(
                    " Read more About Us",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Center(
                  child: Icon(Icons.expand_more_sharp),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: 400,
            height: 60,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 27, 24, 212)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)))),
              onPressed: () {
                Navigator.pushNamed(context, '/quiz');
              },
              child: const Text("Start Test",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 25)),
            ),
          ),
        ],
      ),
    );
  }
}

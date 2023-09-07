import 'package:flutter/material.dart';

class QuizePage extends StatefulWidget {
  const QuizePage({super.key});

  @override
  State<QuizePage> createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  var questions = [];
  var index = 0;
  int rightAnswerCount = 0;
  int failAnswerCount = 0;
  FetchQuestions() {
    questions = [
      {
        "Level": "1",
        "question": "how many colors Google Logo? ",
        "options": ["4", "5", "6", "7"],
        "answerIndex": 1,
      },
      {
        "Level": "2",
        "question": "Which is Not Relted to Google Product? ",
        "options": ["Flutter", "Google Play", "Angular", "React Native"],
        "answerIndex": 3,
      },
      {
        "Level": "3",
        "question": "Which of Programming Language have smallest community? ",
        "options": ["Python", "JavaScript", "Java", "Perl"],
        "answerIndex": 3,
      },
      {
        "Level": "4",
        "question": "What is Best Language For AI? ",
        "options": ["Python", "JavaScript", "Java", "C++"],
        "answerIndex": 0,
      },
      {
        "Level": "5",
        "question": "What is  Language it's Not good for SPA Web Application? ",
        "options": ["React.js", "Angular", "Vue.js", "Flutter"],
        "answerIndex": 3,
      },
    ];
  }

  @override
  void initState() {
    FetchQuestions();
    super.initState();
  }

  validate(i) {
    print(i);
    if (questions[index]['answerIndex'] == i) {
      setState(() {
        // print(rightAnswerCount);
        rightAnswerCount++;
      });
    } else {
      setState(() {
        // print(failAnswerCount);
        failAnswerCount++;
      });
    }
    if (index < questions.length - 1) {
      setState(() {
        index++;
      });
    } else {
      // print("پاسخ درست : $rightAnswerCount");
      // print("پاسخ ناردست : $failAnswerCount");
      // print(questions.length);
      Navigator.pushNamed(context, '/result', arguments: {
        'right': rightAnswerCount,
        'fail': failAnswerCount,
        'total': questions.length,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text(questions[index]['Level']),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500.0,
            color: Colors.yellow,
            child: Center(
                child: Text(
              questions[index]['question'],
              style: const TextStyle(fontSize: 25.0),
            )),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 400,
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(171, 28, 28, 59)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                          ),
                          onPressed: () {
                            validate(0);
                          },
                          child: Text(
                            questions[index]['options'][0],
                            style: const TextStyle(
                                color: Color.fromARGB(255, 105, 99, 99),
                                fontSize: 25),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(171, 28, 28, 59)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                          ),
                          onPressed: () {
                            validate(1);
                          },
                          child: Text(
                            questions[index]['options'][1],
                            style: const TextStyle(
                                color: Color.fromARGB(255, 105, 99, 99),
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(171, 28, 28, 59)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                          ),
                          onPressed: () {
                            validate(2);
                          },
                          child: Text(
                            questions[index]['options'][2],
                            style: const TextStyle(
                                color: Color.fromARGB(255, 105, 99, 99),
                                fontSize: 25),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(171, 28, 28, 59)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                          ),
                          onPressed: () {
                            validate(3);
                          },
                          child: Text(
                            questions[index]['options'][3],
                            style: const TextStyle(
                                color: Color.fromARGB(255, 105, 99, 99),
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

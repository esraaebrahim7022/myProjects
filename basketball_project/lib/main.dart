import 'package:flutter/material.dart';

void main() {
  runApp(const Pointscounter());
}

class Pointscounter extends StatefulWidget {
  const Pointscounter({super.key});

  @override
  State<Pointscounter> createState() => _PointscounterState();
}

class _PointscounterState extends State<Pointscounter> {
  int teamApoint = 0;
  int teamBpoint = 0;

  void addOnepoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'points counter ',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamApoint',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoint++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoint += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoint += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBpoint',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoint++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoint += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoint += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamApoint = 0;
                    teamBpoint = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

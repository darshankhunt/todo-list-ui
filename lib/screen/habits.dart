import 'package:flutter/material.dart';

class Habits extends StatefulWidget {
  const Habits({Key? key}) : super(key: key);

  @override
  State<Habits> createState() => _HabitsState();
}

class _HabitsState extends State<Habits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xffe1efed),
      body: Scaffold(
        body: Stack(
          children: [
            AppBar(
              backgroundColor: const Color(0xffe1efed),
              elevation: 0,
              leading: const Icon(
                Icons.arrow_back,
                color: Color(0xff0e2b25),
              ),
              title: const Text(
                'Habits',
                style: TextStyle(
                  color: Color(0xff0e2b25),
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: 10,
              child: Image.asset('assets/leaf.png'),
            ),
            Column(
              children: [
                SizedBox(height: 100),
                Text('April 2022'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

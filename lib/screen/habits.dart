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
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xff0e2b25),
                ),
              ),
              centerTitle: true,
              title: const Text(
                'Habits',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff0e2b25),
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: -35,
              right: -20,
              child: Image.asset('assets/leaf_rotate_up.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  const Text(
                    'April 2022',
                    style: TextStyle(
                        color: Color(0xff0e2b25),
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '5 task for today',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 21, 182, 149),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xfff2ffff),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.calendar_month,
                            color: Color.fromARGB(255, 21, 182, 149),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

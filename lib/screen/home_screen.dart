// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:todo_list_ui/models/Categories.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:todo_list_ui/models/ongoing_task.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({Key? key}) : super(key: key);

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  List<Categories> categorieData = [
    Categories(name: 'Meeting', task: '5 task', image: 'assets/meeting.jpg'),
    Categories(name: 'Habits', task: '10 task', image: 'assets/habbit.png'),
  ];
  List<OngoingTask> ongoingTaskData = [
    OngoingTask(
      timeDurationColor: const Color.fromARGB(255, 231, 164, 148),
      taskPercentageText: '70%',
      cardColor: const Color(0xfffee7e1),
      taskName: 'Metting with angela',
      totalTime: '1 Hour',
      timeDuration: '10.00 PM -11.00 AM',
      taskPercentage: 70,
      profilePhoto1: 'assets/profile_avatar1.jpg',
      profilePhoto2: 'assets/profile_avatar2.jpg',
      profilePhoto3: 'assets/profile_avatar4.jpg',
    ),
    OngoingTask(
      timeDurationColor: const Color(0xff7eaf92),
      taskPercentageText: '60%',
      cardColor: const Color(0xffe3fee8),
      taskName: 'Learn english',
      totalTime: '1 Hour',
      timeDuration: '08.00 PM - 09.00 AM',
      taskPercentage: 60,
      profilePhoto1: 'assets/profile_avatar1.jpg',
      profilePhoto2: 'assets/profile_avatar4.jpg',
      profilePhoto3: 'assets/profile_avatar2.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe1efed),
      extendBodyBehindAppBar: true,
      body: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add Task',
          elevation: 4.0,
          backgroundColor: const Color(0xffff9d85),
          child: const Icon(Icons.add, color: Color(0xffa24129)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: const GNav(
          gap: 8,
          backgroundColor: Colors.white,
          color: Colors.grey,
          activeColor: Color.fromARGB(255, 80, 170, 117),
          tabs: [
            GButton(
              icon: Icons.home_filled,
              text: 'Home',
            ),
            GButton(
              icon: Icons.note_alt_sharp,
              text: 'Report',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.abc,
              iconColor: Color(0xffffffff),
              iconActiveColor: Color(0xffffffff),
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              right: -20,
              top: 20,
              child: Image.asset('assets/leaf.png'),
            ),
            AppBar(
              backgroundColor: const Color(0xffe1efed),
              elevation: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('assets/profile_avatar.jpg'),
                  ),
                )
              ],
              title: const Text(
                'My Task',
                style: TextStyle(
                  color: Color(0xff0e2b25),
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const Text(
                        'Categories',
                        style: TextStyle(
                            color: Color(0xff0e2b25),
                            fontSize: 23,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.43,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    categorieData[0].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  categorieData[0].name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                              ),
                              Positioned(
                                top: 40,
                                left: 10,
                                child: Text(
                                  categorieData[0].task,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.43,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    categorieData[1].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  categorieData[1].name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                              ),
                              Positioned(
                                top: 40,
                                left: 10,
                                child: Text(
                                  categorieData[1].task,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 297,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(400, 40),
                          topRight: Radius.elliptical(400, 40))),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Ongoing task',
                            style: TextStyle(
                              color: Color(0xff0e2b25),
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ListView.builder(
                              itemCount: 2,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: ((context, index) {
                                return Card(
                                  color: ongoingTaskData[index].cardColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              ongoingTaskData[index].taskName,
                                              style: const TextStyle(
                                                color: Color(0xff0e2b25),
                                                fontSize: 23,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 5, 20, 5),
                                              child: Text(
                                                ongoingTaskData[index]
                                                    .totalTime,
                                                style: const TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.watch_later_outlined,
                                              color: ongoingTaskData[index]
                                                  .timeDurationColor,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              ongoingTaskData[index]
                                                  .timeDuration,
                                              style: TextStyle(
                                                  color: ongoingTaskData[index]
                                                      .timeDurationColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        LinearPercentIndicator(
                                          lineHeight: 8,
                                          percent: ongoingTaskData[index]
                                                  .taskPercentage /
                                              100,
                                          progressColor: Colors.green.shade300,
                                          backgroundColor: Colors.white,
                                          barRadius: const Radius.circular(10),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.asset(
                                                ongoingTaskData[index]
                                                    .profilePhoto1,
                                                width: 25,
                                                height: 25,
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.asset(
                                                ongoingTaskData[index]
                                                    .profilePhoto2,
                                                width: 25,
                                                height: 25,
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.asset(
                                                ongoingTaskData[index]
                                                    .profilePhoto3,
                                                width: 25,
                                                height: 25,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              ongoingTaskData[index]
                                                  .taskPercentageText,
                                              style: const TextStyle(
                                                  color: Color(0xff0e2b25),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              })),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: -20,
              top: 20,
              child: Image.asset('assets/leaf.png'),
            ),
          ],
        ),
      ),
    );
  }
}

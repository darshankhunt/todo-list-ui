import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_list_ui/models/task_list.dart';

class Habits extends StatefulWidget {
  const Habits({Key? key}) : super(key: key);

  @override
  State<Habits> createState() => _HabitsState();
}

class _HabitsState extends State<Habits> {
  // CalendarFormat format = CalendarFormat.month;
  List<TaskList> taskList = [
    TaskList(taskName: 'Take a bath', taskSelected: false),
    TaskList(taskName: 'Read book', taskSelected: true),
    TaskList(taskName: 'Learn english', taskSelected: false),
    TaskList(taskName: 'Clean bedroom', taskSelected: false)
  ];
  String selectedTaskList = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xffe1efed),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: -35,
              right: -20,
              child: Image.asset('assets/leaf_rotate_up.png'),
            ),
            Column(
              children: [
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
                      const SizedBox(height: 18),
                      TableCalendar(
                        availableCalendarFormats: const {
                          CalendarFormat.month: 'Month',
                          CalendarFormat.twoWeeks: '2 weeks',
                          CalendarFormat.week: 'Week',
                        },
                        headerVisible: false,
                        calendarStyle: const CalendarStyle(
                          todayDecoration: BoxDecoration(
                              color: Color(0xff51b1af), shape: BoxShape.circle),
                        ),
                        headerStyle: const HeaderStyle(
                          formatButtonVisible: false,
                        ),
                        focusedDay: DateTime.now(),
                        firstDay: DateTime(1990),
                        lastDay: DateTime(2050),
                        calendarFormat: CalendarFormat.week,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                height: 100,
                                width: 100,
                                child: CircularProgressIndicator(
                                  value: 0.7,
                                  color: Color(0xff83cb9b),
                                  strokeWidth: 15,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '70%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Progress task',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '30%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'On Progress',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 120,
                                width: 120,
                                child: Image.asset('assets/Jalebi_main.png',
                                    fit: BoxFit.fill),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(400, 40),
                          topRight: Radius.elliptical(400, 40))),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Task List',
                            style: TextStyle(
                              color: Color(0xff0e2b25),
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: taskList.length,
                            itemBuilder: (context, index) {
                              final i = taskList[index];
                              return Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xffecfdf8),
                                ),
                                child: RadioListTile<String>(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  selectedTileColor: Colors.grey,
                                  // tileColor: Colors.green,
                                  activeColor: const Color(0xff56aba6),
                                  title: Text(i.taskName),
                                  value: i.taskName,
                                  groupValue: selectedTaskList,
                                  onChanged: (value) {
                                    // print(value);
                                    setState(() {
                                      selectedTaskList = value!;
                                    });
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

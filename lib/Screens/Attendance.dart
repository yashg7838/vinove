import 'package:flutter/material.dart';

class attendance extends StatefulWidget {
  const attendance({Key? key}) : super(key: key);

  @override
  State<attendance> createState() => _attendanceState();
}

class _attendanceState extends State<attendance> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ATTENDANCE"),
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
          backgroundColor: Color(0xFF4D3BBC),
          iconTheme: IconThemeData(
              color: Colors.white
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 160,
                width: width,
                color: Color(0xFF4D3BBC),
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/img.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.supervised_user_circle_rounded,
                                size: 70,
                                color: Colors.white,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cameron Williamson",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "cameronwilliamson@gmail.com",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.punch_clock_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Timer",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        color: Color(0xFFf3f1fe),
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.calendar_month_outlined, color: Color(0xFF624de3),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Attendance",
                              style: TextStyle(
                                  color: Color(0xFF624de3)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.local_activity_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Activity",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.analytics_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Timesheet",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.contact_page_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Report",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.home, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Jobsite",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.group, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Team",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.group_off, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Timeoff",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Schedules",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.account_tree_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Request to join Organization",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.lock_clock_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.logout_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.live_help_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "FAQ & Help",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.document_scanner_rounded, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Icon(Icons.change_circle_outlined, color: Color(0xFF00234b),),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Version: 2. 10(1)",
                              style: TextStyle(
                                  color: Color(0xFF00234b)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: const SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                      "Attendance"
                  ),
                )
              ],
            )
        ),
      )
    );
  }
}

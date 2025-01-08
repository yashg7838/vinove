import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vinove/Screens/currentLocation.dart';
import 'package:vinove/Screens/directions.dart';
import 'package:vinove/Screens/searchEmployees.dart';

class attendance extends StatefulWidget {
  const attendance({Key? key}) : super(key: key);

  @override
  State<attendance> createState() => _attendanceState();
}

class _attendanceState extends State<attendance> {
  @override
  Widget build(BuildContext context) {
    final employee = [
      {
        "empID" : "WSL0003",
        "empName" : "Wade Warren",
        "inTime" : "9:30 am",
        "outTime" : "",
        "profileImage" : "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      },
      {
        "empID" : "WSL0034",
        "empName" : "Esther Howard",
        "inTime" : "9:30 am",
        "outTime" : "06:40 pm",
        "profileImage" : "",
      },
      {
        "empID" : "WSL0054",
        "empName" : "Cameron William",
        "inTime" : "",
        "outTime" : "",
        "profileImage" : "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      },
      {
        "empID" : "WSL0076",
        "empName" : "Brooklyn Simon",
        "inTime" : "9:30 am",
        "outTime" : "06:40 pm",
        "profileImage" : "",
      },
      {
        "empID" : "WSL0065",
        "empName" : "Savannah Nguyen",
        "inTime" : "9:30 am",
        "outTime" : "06:40 pm",
        "profileImage" : "",
      },
      {
        "empID" : "WSL0069",
        "empName" : "Leslie Alexander",
        "inTime" : "9:30 am",
        "outTime" : "06:40 pm",
        "profileImage" : "https://as1.ftcdn.net/jpg/01/85/04/84/1000_F_185048418_X1kohHSgyAbPJQxPHurs4uXCTmcRSNAp.jpg",
      },
      {
        "empID" : "WSL0095",
        "empName" : "Kathryn Murphy",
        "inTime" : "9:30 am",
        "outTime" : "06:40 pm",
        "profileImage" : "",
      }
    ];
    final now = DateTime.now();
    final formattedDate = DateFormat('EEE, MMM d y').format(now);
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
        body: SafeArea(
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => searchEmployees(),));
                  },
                  child: Container(
                    color: Color(0xFFeaf0f6),
                    height: 50,
                    width: width,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFFc9c5ff),
                                child: Icon(CupertinoIcons.group, color: Colors.white,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "All Members",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Text(
                            "Change",
                            style: TextStyle(
                              color: Color(0xFF8983f0),
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(CupertinoIcons.left_chevron, color: Color(0xFF857cf1),),
                      Text(formattedDate),
                      const Icon(CupertinoIcons.right_chevron, color: Color(0xFFc3c3c3),),
                      const Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Icon(Icons.calendar_today_rounded),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: employee.length,
                      itemBuilder: (context, index){
                        return ListTile(
                          title: Row(
                            children: [
                              employee[index]["profileImage"] == ""?
                              CircleAvatar(
                                backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/000/439/863/small_2x/Basic_Ui__28186_29.jpg"),
                              )
                                  :
                              CircleAvatar(
                                backgroundImage: NetworkImage(employee[index]["profileImage"]!),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "${employee[index]["empName"]} (${employee[index]["empID"]})",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              )
                            ],
                          ),
                          subtitle: employee[index]["inTime"] == ""?
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, right: 180),
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFe7e7ec),
                                borderRadius: BorderRadius.circular(4)
                              ),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    "NOT LOGGED-IN YET"
                                  ),
                                ),
                              ),
                            ),
                          ):
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(CupertinoIcons.arrow_up_right, color: Colors.green,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(employee[index]["inTime"]!)
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              employee[index]["outTime"] == "" ?
                                  Row(
                                    children: [
                                      Icon(Icons.error, color: Colors.yellow,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: Color(0xFFe1fcd1),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 7.0, right: 7.0, top: 3.0, bottom: 3.0),
                                          child: Text(
                                            "Working",
                                            style: TextStyle(
                                              color: Color(0xFF27aa34)
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ):
                                  Row(
                                    children: [
                                      Icon(CupertinoIcons.arrow_down_left, color: Colors.red,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(employee[index]["outTime"]!)
                                    ],
                                  )
                            ],
                          ),
                          trailing: employee[index]["inTime"] == ""?
                          SizedBox():
                          Container(
                            width: 60,
                            child: Row(
                              children: [
                                InkWell(
                                    onTap: (){
                                      Navigator.push(
                                          context, MaterialPageRoute(
                                        builder: (context) => directions(),
                                      )
                                      );
                                    },
                                    child: Icon(CupertinoIcons.calendar)
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                InkWell(
                                    onTap: (){
                                      Navigator.push(
                                          context, MaterialPageRoute(
                                        builder: (context) => currentLocation(),
                                      )
                                      );
                                      },
                                    child: Icon(Icons.my_location_rounded, color: Color(0xFF624de3),)
                                )
                                // IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.calendar)),
                                // IconButton(onPressed: (){}, icon: Icon(Icons.my_location_rounded, color: Color(0xFF624de3),))
                              ],
                            ),
                          ),
                        );
                      },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                )
              ],
            )
        ),
      )
    );
  }
}

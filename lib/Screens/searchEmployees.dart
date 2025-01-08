import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'currentLocation.dart';
import 'directions.dart';

class searchEmployees extends StatefulWidget {
  const searchEmployees({Key? key}) : super(key: key);

  @override
  State<searchEmployees> createState() => _searchEmployeesState();
}

class _searchEmployeesState extends State<searchEmployees> {
  @override
  TextEditingController searchController = TextEditingController();
  List<Map<String, String>> filteredEmployee = [];

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

  void initState() {
    super.initState();
    filteredEmployee = employee;
  }

  void filterEmployees(String query) {
    setState(() {
      filteredEmployee = employee.where((emp) {
        final nameLower = emp["empName"]?.toLowerCase() ?? '';
        final idLower = emp["empID"]?.toLowerCase() ?? '';
        final searchLower = query.toLowerCase();
        return nameLower.contains(searchLower) ||
            idLower.contains(searchLower);
      }).toList();
    });
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SEARCH MEMBERS"),
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
        body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search by name or ID',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFe7e7ec)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFe7e7ec)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    onChanged: filterEmployees,
                  ),
                ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: filteredEmployee.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Row(
                    children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/000/439/863/small_2x/Basic_Ui__28186_29.jpg"),
                          ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "${filteredEmployee[index]["empName"]} (${filteredEmployee[index]["empID"]})",
                          style: TextStyle(
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      )
                    ],
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
            ),)
              ],
            )
        ),
      ),
    );
  }
}

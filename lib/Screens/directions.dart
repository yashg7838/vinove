import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class directions extends StatefulWidget {
  const directions({Key? key}) : super(key: key);

  @override
  State<directions> createState() => _directionsState();
}

class _directionsState extends State<directions> {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SEE ROUTE"),
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
                Container(
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
                                "Wade Warren",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: FlutterMap(
                    options: MapOptions(
                      initialCenter: LatLng(51.5, -0.09),
                      initialZoom: 13.0,
                    ),
                    children: [
                      // Add a TileLayer for map tiles
                      TileLayer(
                        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c'],
                      ),
                      // Add a PolylineLayer for drawing direction lines
                      PolylineLayer(
                        polylines: [
                          Polyline(
                            points: [
                              LatLng(51.5, -0.09), // Starting point
                              LatLng(51.505, -0.08), // Waypoint
                              LatLng(51.51, -0.1), // Ending point
                            ],
                            color: Colors.blue, // Line color
                            strokeWidth: 4.0, // Line thickness
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

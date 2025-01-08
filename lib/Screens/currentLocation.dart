import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class currentLocation extends StatefulWidget {
  const currentLocation({Key? key}) : super(key: key);

  @override
  State<currentLocation> createState() => _currentLocationState();
}

class _currentLocationState extends State<currentLocation> {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: Text("TRACK LIVE LOCATION"),
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
                      initialCenter: LatLng(28.56279522295112, 77.21274622499139),
                      initialZoom: 13.0,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c'],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            width: 80.0,
                            height: 80.0,
                            point: LatLng(28.56279522295112, 77.21274622499139),
                            child: const Icon(
                              Icons.location_pin,
                              size: 40,
                              color: Colors.red,
                            ),
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

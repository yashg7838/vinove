import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class currentLocation extends StatefulWidget {
  const currentLocation({Key? key}) : super(key: key);

  @override
  State<currentLocation> createState() => _currentLocationState();
}

class _currentLocationState extends State<currentLocation> {
  late MapboxMapController mapController;
  final LatLng currentLocation = LatLng(28.6139, 77.2090);

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }
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
                Expanded(
                  child: MapboxMap(
                    accessToken: 'pk.eyJ1IjoieWFzaGd1cHRhMjFjc2UiLCJhIjoiY201bjM0ZGE0MDZudDJrc2N0NTl3MDVvaSJ9.hJBSCB0OL83JFj_3SYa7nQ',
                    initialCameraPosition: CameraPosition(
                      target: currentLocation,
                      zoom: 12.0,
                    ),
                    onMapCreated: _onMapCreated,
                    myLocationEnabled: true,
                    myLocationTrackingMode: MyLocationTrackingMode.Tracking,
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

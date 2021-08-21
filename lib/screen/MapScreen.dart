import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    super.initState();
    _loading = true;
    _determinePosition();
  }

  late Position po;
  late bool _loading;
  late List<Placemark> placemarks;
//////////////////geolocTION////////////////////
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // position = Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.high);
    Position pp = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(pp.latitude);
    print(pp.longitude);

    placemarks = await placemarkFromCoordinates(pp.latitude, pp.longitude);
    print(placemarks[0].locality);
    setState(() {
      po = pp;
      _loading = false;
    });
    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return pp;
    // return await Geolocator.getCurrentPosition();
  }
////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Loction",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (ctx) => MapScreen()));
          },
          child: Text(
            "Save",
            style: TextStyle(color: Colors.black, fontSize: 25.0),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 85.0, vertical: 10.0),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      po.latitude,
                      po.longitude,
                    ),
                    zoom: 18.4746,
                  ),
                  myLocationEnabled: true,
                ),
                Positioned(
                  left: 50.0,
                  top: 50.0,
                  child: Container(
                    height: 100.0,
                    width: 250,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Text(
                          placemarks[0].administrativeArea.toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          placemarks[0].name.toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          placemarks[0].subLocality.toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          placemarks[0].subThoroughfare.toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          placemarks[0].postalCode.toString(),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
      // : Container(
      //     child: Center(child: Text("hello map screen ${po.latitude}")),
      //   ),
    );
  }
}
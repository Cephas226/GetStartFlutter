import 'dart:async';
import 'package:GetStartApp/main.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class ChangeLocationPage extends StatefulWidget {
  @override
  _ChangeLocationPageState createState() => _ChangeLocationPageState();
}

class _ChangeLocationPageState extends State<ChangeLocationPage> {
Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Change Location'),
          backgroundColor: Colors.orange[700],
          leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
    },
  ),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
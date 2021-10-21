import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:nornknee/Components/services/Assistance_Map/assistance_methods.dart';
import 'dart:async';
class GeoMap extends StatefulWidget {
  GeoMap(double sheetItemHeight);
  //const GeoMap({ Key key }) : super(key: key);

  @override
  _GeoMapState createState() => _GeoMapState();
}

class _GeoMapState extends State<GeoMap> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController newGoogleMapController;

  Position currentPosition;
   Geolocator  geolocator = Geolocator();

  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
       forceAndroidLocationManager: true,
        desiredAccuracy: LocationAccuracy.best);
    currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition =
        new CameraPosition(target: latLatPosition, zoom: 14);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

   //String address = await AssistantMethods.searchCoordinateAddress(position);
   //print("This is your current Address::" + address);
  }

  ///
  double bottomPaddingOfMap = 0;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
     zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GoogleMap(
      ///
      padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
      mapType: MapType.normal,
      myLocationButtonEnabled: true,
      initialCameraPosition: _kGooglePlex,
      myLocationEnabled: true,
      zoomGesturesEnabled: true,
      zoomControlsEnabled: true,
      onMapCreated: (GoogleMapController controller) {
        _controllerGoogleMap.complete(controller);
        newGoogleMapController = controller;

        ///
        setState(() {
          bottomPaddingOfMap = 300.0;
        });
        locatePosition();
      },
    ));
  }
}

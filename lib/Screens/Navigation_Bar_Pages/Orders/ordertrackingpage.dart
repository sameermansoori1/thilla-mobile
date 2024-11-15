import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:svg_flutter/svg.dart';
import 'package:thillla_mobile_frontend/Common/app_themes.dart';
import 'package:thillla_mobile_frontend/Common/common_assets.dart';
import 'package:thillla_mobile_frontend/Common/widget/common_app_button.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  late BitmapDescriptor currentLocationIcon;
  bool isDelivered = false;

  void getCurrentLocation() async {
    Location location = Location();
    currentLocation = await location.getLocation();
    setState(() {});
  }

  // void getPolyPoints() async {
  //   PolylinePoints polylinePoints = PolylinePoints();
  //
  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //     'YOUR_API_KEY',
  //     PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
  //     PointLatLng(destination.latitude, destination.longitude),
  //   );
  //   if (result.points.isNotEmpty) {
  //     result.points.forEach((PointLatLng pointLatLng) {
  //       polylineCoordinates.add(LatLng(pointLatLng.latitude, pointLatLng.longitude));
  //     });
  //     setState(() {});
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // getPolyPoints();
    setCustomMarkerIcon();
    getCurrentLocation();
  }

  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/common/sourceIcon.png').then((icon) {
      sourceIcon = icon;
    });
    BitmapDescriptor.fromAssetImage(const ImageConfiguration(size: Size(2, 3)), 'assets/common/destinationIcon.png').then((icon) {
      destinationIcon = icon;
    });
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, 'assets/common/home1.png').then((icon) {
      currentLocationIcon = icon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (currentLocation != null)
            GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: sourceLocation,
                // LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 12.5,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId("currentLocation"),
                  position: LatLng(
                    currentLocation!.latitude!,
                    currentLocation!.longitude!,
                  ),
                ),
                Marker(
                  markerId: const MarkerId("source"),
                  position: sourceLocation,
                  icon: sourceIcon,
                ),
                Marker(
                  markerId: const MarkerId("destination"),
                  position: destination,
                  icon: destinationIcon,
                ),
              },
            ),
          Positioned(
            top: 50.0,
            left: 10.0,
            child: ClipOval(
              child: Material(
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              height: 210.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Divider(
                      height: 3,
                      thickness: 3.0,
                      indent: 150,
                      endIndent: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(CommonAssets.userLogo),
                                const SizedBox(width: 5),
                                Text(
                                  "Aman Sharma",
                                  style: TextStyle(
                                    fontFamily: AppThemes.font1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: AppThemes.primaryTextColor2,
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width / 10),
                                SvgPicture.asset(CommonAssets.phone),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(CommonAssets.location2),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Delivery",
                                      style: TextStyle(
                                        fontFamily: AppThemes.font1,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: AppThemes.primaryTextColor2,
                                      ),
                                    ),
                                    Text(
                                      "201/D, Ananta Apts, Near Jal Bhawan, Andheri \n400069",
                                      style: TextStyle(
                                        fontFamily: AppThemes.font1,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: AppThemes.primaryTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CommonAppButton(
                            onPressed: () {
                              setState(() {
                                isDelivered = !isDelivered;
                              });
                            },
                            showPadding: false,
                            childWidget: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(isDelivered ? CommonAssets.reached : CommonAssets.start),
                                const SizedBox(width: 5),
                                 Text(
                                  isDelivered ? "Reached" : "Submit",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: AppThemes.headingTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

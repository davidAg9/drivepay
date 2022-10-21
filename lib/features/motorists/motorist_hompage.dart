import 'dart:async';

import 'package:drivepay/core/utilities/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MTHomePage extends StatefulWidget {
  const MTHomePage({super.key});

  @override
  State<MTHomePage> createState() => _MTHomePageState();
}

class _MTHomePageState extends State<MTHomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  late final TextEditingController _fromController;
  late final TextEditingController _toController;

  CameraPosition currentPostion = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
    _fromController = TextEditingController();
    _toController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
            width: 100.w,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "eg.achimota",
                      labelText: "where are you ?",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    key: const Key("from-location"),
                    controller: _fromController,
                    validator: Validator.locationName,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "eg.29 palm street",
                      labelText: "where to ?",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    key: const Key("from-location"),
                    controller: _toController,
                    validator: Validator.locationName,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
            width: 100.w,
            child: GoogleMap(
              initialCameraPosition: currentPostion,
              onMapCreated: (controller) => _controller.complete(controller),
            ),
          )
        ],
      ),
    );
  }
}

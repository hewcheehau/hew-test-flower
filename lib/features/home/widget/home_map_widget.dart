import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

class HomeMapWidget extends StatefulWidget {
  const HomeMapWidget({super.key});

  @override
  State<HomeMapWidget> createState() => _HomeMapWidgetState();
}

class _HomeMapWidgetState extends State<HomeMapWidget> {
  MapController? mapController;

  @override
  void initState() {
    mapController = MapController();
    super.initState();
  }

  @override
  void dispose() {
    mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.h,
        width: double.maxFinite,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(bottom: 20, top: 8),
        child: FlutterMap(
          options: MapOptions(
            center: const LatLng(3.1172, 101.6781),
            zoom: 10,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                    point: const LatLng(3.1172, 101.6781),
                    builder: (context) => const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        )),
                Marker(
                    point: const LatLng(3.072500, 101.607224),
                    builder: (context) => const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ))
              ],
            ),
          ],
        ));
  }
}

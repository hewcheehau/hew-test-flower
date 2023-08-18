import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';

class HomeMapWidget extends StatefulWidget {
  const HomeMapWidget({super.key});

  @override
  State<HomeMapWidget> createState() => _HomeMapWidgetState();
}

class _HomeMapWidgetState extends State<HomeMapWidget> {
  final controller = MapController(
  location: const LatLng(3.1172, 0101.6781),
  zoom: 15,
);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 20, top: 8),
      child: MapLayout(
        controller: controller,
        builder: (context, transformer) {
          return TileLayer(
            builder: (context, x, y, z) {
              final tilesInZoom = pow(2.0, z).floor();
    
              while (x < 0) {
                x += tilesInZoom;
              }
              while (y < 0) {
                y += tilesInZoom;
              }
    
              x %= tilesInZoom;
              y %= tilesInZoom;
    
              //Google Maps
              final url =
                  'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';
    
              return CachedNetworkImage(
                imageUrl: url,
                fit: BoxFit.cover,
              );
            },
          );
        },
      ),
    );
  }
}

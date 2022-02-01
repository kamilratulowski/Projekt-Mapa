import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class DataScreen extends StatelessWidget {
  DataScreen({Key? key}) : super(key: key);
  static const routeName = '/data-screen';
  final markers = <Marker>[];

  void addMarker() {
    Marker marker = Marker(
      point: LatLng(49.23175824, 19.98163184),
      builder: (ctx) => const Icon(Icons.menu),
    );
    markers.add(marker);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(49.2849, 19.9732),
            ),
            layers: [
              TileLayerOptions(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'b'],
                  fastReplace: true),
              MarkerLayerOptions(
                markers: markers,
              )
            ],
          ),
          Positioned(
            top: 30,
            left: 50,
            child: InkWell(
              onTap: () {
                addMarker();
              },
              child: const Text('PRESS'),
            ),
          )
        ],
      ),
    );
  }
}

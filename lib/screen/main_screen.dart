import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../data/card.dart';
import 'detail_places.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const routeName = 'main-screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final markers = <Marker>[];
    var mapController = MapController();
    final places = Provider.of<Cards>(context, listen: false);
    final height = MediaQuery.of(context).size.height;

    void addMarker(LatLng latlng) {
      Marker marker = Marker(
        point: latlng,
        builder: (ctx) => const Icon(Icons.menu),
      );
      print(latlng);
      markers.add(marker);
    }

    //final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
                minZoom: 10,
                center: LatLng(49.2849, 19.9732),
                onMapCreated: (c) {
                  mapController = c;
                }),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'b'],
              ),
              MarkerLayerOptions(
                markers: markers,
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, top: 20),
            child: const Text(
              'Tytuł',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, top: 60),
            height: height * 0.58,
            width: 300,
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(5),
              itemCount: places.items.length,
              itemBuilder: (ctx, i) => ListTile(
                title: Text(places.items[i].name),
                leading: CircleAvatar(
                  child: Text('${i + 1}'),
                ),
                tileColor: Colors.amberAccent,
                onTap: () {
                  addMarker(places.items[i].latlng);
                },
                subtitle: Text(places.items[i].id),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      DetailScreen.routeName,
                      arguments: {
                        "id": places.items[i].id,
                      },
                    );
                  },
                  child: const Text('Więcej'),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/data-screen');
          },
          child: const Icon(Icons.menu)),
    );
  }
}

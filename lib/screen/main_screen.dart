import 'package:flutter/material.dart';
import 'package:mapa_inf/data/data_place.dart';
import 'package:provider/provider.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../data/card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const routeName = 'main-screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final _markers = <Marker>[
      Marker(
        width: 100,
        height: 50,
        point: LatLng(49.2845888, 19.8442956),
        builder: (ctx) => Container(
          alignment: Alignment.center,
          child: const Text('Dolina Chochołowska'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
      Marker(
        width: 100,
        height: 50,
        point: LatLng(49.23175824, 19.98163184),
        builder: (ctx) => Container(
          alignment: Alignment.center,
          child: const Text('Kasprowy Wierch'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
      Marker(
        width: 100,
        height: 50,
        point: LatLng(49.2742751, 19.8676750),
        builder: (ctx) => Container(
          alignment: Alignment.center,
          child: const Text('Dolina Kościeliska'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
      Marker(
        width: 100,
        height: 50,
        point: LatLng(49.26634607, 19.90070137),
        builder: (ctx) => Container(
          alignment: Alignment.center,
          child: const Text('Dolina Mała Łąka'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
      Marker(
        width: 100,
        height: 50,
        point: LatLng(49.27151724, 19.93270785),
        builder: (ctx) => Container(
          alignment: Alignment.center,
          child: const Text('Dolina Strążyska'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
      Marker(
        width: 100,
        height: 50,
        point: LatLng(49.27748831, 19.84974375),
        builder: (ctx) => Container(
          alignment: Alignment.center,
          child: const Text('Dolina Lejowa'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
      Marker(
        width: 100,
        height: 50,
        point: LatLng(49.25899633, 19.96621014),
        builder: (ctx) => Container(
          alignment: Alignment.center,
          child: const Text('Kalatówki'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
      Marker(
        width: 100,
        height: 50,
        point: LatLng(49.248877, 19.970357),
        builder: (ctx) => Container(
          alignment: Alignment.center,
          child: const Text('Dolina Gorczykowa'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
      Marker(
        width: 100,
        height: 50,
        point: LatLng(49.27653095, 19.95757676),
        builder: (ctx) => Container(
          alignment: Alignment.center,
          child: const Text('Dolina Białego'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
    ];
    var mapController = MapController();
    final places = Provider.of<Places>(context, listen: true);
    final height = MediaQuery.of(context).size.height;

    // void addMarker(LatLng latlng, String name) {
    //   Marker marker = Marker(
    //     point: latlng,
    //     width: 100,
    //     height: 50,
    //     builder: (ctx) => Container(
    //         alignment: Alignment.center,
    //         child: Text(name),
    //         decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(10), color: Colors.white)),
    //   );
    //   _markers.add(marker);
    // }

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
              PolylineLayerOptions(polylines: [
                Polyline(points: dol_chocho, strokeWidth: 5, color: Colors.red),
                Polyline(points: dol_kosc, strokeWidth: 5, color: Colors.blue),
                Polyline(points: kasprowy_wierch, strokeWidth: 5, color: Colors.yellow),
                Polyline(points: dolina_bialego, strokeWidth: 5, color: Colors.green),
                Polyline(points: dolina_strazyska, strokeWidth: 5, color: Colors.pink),
                Polyline(points: dolina_maje_laki, strokeWidth: 5, color: Colors.purple),
                Polyline(points: dolina_lejowa, strokeWidth: 5, color: Colors.orange),
                Polyline(points: kalatowki, strokeWidth: 5, color: Colors.amber),
                Polyline(points: dol_gorczykowa, strokeWidth: 5, color: Colors.black),
              ]),
              MarkerLayerOptions(
                markers: _markers,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, top: 20),
            child: const Text(
              'Najczęściej odwiedzane szlaki w Tatrach Zachodnich',
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
                  //addMarker(places.items[i].latlng, places.items[i].name);
                },
                subtitle: Text(places.items[i].description),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/detail-screen',
                        arguments: places.items[i].id);
                  },
                  child: const Text('Dane'),
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

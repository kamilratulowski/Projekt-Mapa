import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class Place {
  final String id;
  final String name;
  final String place;
  final String description;
  final LatLng latlng;

  Place({
    this.id = '',
    this.name = '',
    this.place = '',
    this.description = '',
    required this.latlng,
  });
}

class Cards with ChangeNotifier {
  final List<Place> _items = [
    Place(
      id: 'a1',
      name: 'Dolina Chochołowska',
      place: 'place1',
      description: 'description1',
      latlng: LatLng(49.2845888, 19.8442956),
    ),
    Place(
      id: 'b2',
      name: 'Kasprowy Wierch',
      place: 'place2',
      description: 'description2',
      latlng: LatLng(49.23175824, 19.98163184),
    ),
    Place(
      id: 'c3',
      name: 'Dolina Kościeliska',
      place: 'place3',
      description: 'description3',
      latlng: LatLng(49.2955086, 19.8679939),
    ),
    Place(
      id: 'd4',
      name: 'Mała Łąka',
      place: 'place4',
      description: 'description4',
      latlng: LatLng(49.26634607, 19.90070137),
    ),
    Place(
      id: 'e5',
      name: 'Dolina Strążyska',
      place: 'place1',
      description: 'description1',
      latlng: LatLng(49.27151724, 19.93270785),
    ),
    Place(
      id: 'f6',
      name: 'Dolina Lejowa',
      place: 'place2',
      description: 'description2',
      latlng: LatLng(49.27748831, 19.84974375),
    ),
    Place(
      id: 'g7',
      name: 'Kalatówki',
      place: 'place3',
      description: 'description3',
      latlng: LatLng(49.25899633, 19.96621014),
    ),
    Place(
      id: 'h8',
      name: 'Gorczykowa',
      place: 'place4',
      description: 'description4',
      latlng: LatLng(49.23048299, 19.97543256),
    ),
    Place(
      id: 'i9',
      name: 'Dolina Białego',
      place: 'place4',
      description: 'description4',
      latlng: LatLng(49.27653095, 19.95757676),
    ),
  ];

  Place findById(String id) {
    return _items.firstWhere((place) => place.id == id);
  }

  List<Place> get items {
    return [..._items];
  }
}

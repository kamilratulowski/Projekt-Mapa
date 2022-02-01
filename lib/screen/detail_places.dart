import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  static const routeName = 'detail-screen';

  @override
  Widget build(BuildContext context) {
    final placeId = ModalRoute.of(context)!.settings.arguments as Place;
    final place = Provider.of<Cards>(context).findById(placeId.toString());
    return Scaffold(
      body: Column(
        children: [
          Text(
            place.name,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(place.description)
        ],
      ),
    );
  }
}

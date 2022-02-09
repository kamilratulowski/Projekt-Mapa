import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/data_place.dart';
import '../data/card.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  static const routeName = '/detail-screen';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final placeId = ModalRoute.of(context)?.settings.arguments as int;
    final place = Provider.of<Places>(context).findById(placeId);
    final item = Provider.of<Items>(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 100,
              margin: const EdgeInsets.only(left: 15, top: 20),
              alignment: Alignment.center,
              child: Text(
                place.name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]),
            ),
            // Container(
            //   margin: const EdgeInsets.all(15),
            //   height: height * 0.4,
            //   width: width,
            //   child: Image.network(place.imageUrl, fit: BoxFit.cover),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15),
            //   ),
            // ),
            //Text(place.description),
            const SizedBox(height: 15),
            Container(
              height: height * 0.4,
              width: width,
              child: DataTable(
                columns: tableColumns,
                rows: [
                  DataRow.byIndex(
                    index: place.id,
                    cells:  [
                      DataCell(Text(item.items[place.id].styczen.toString())),
                      DataCell(Text(item.items[place.id].luty.toString())),
                      DataCell(Text(item.items[place.id].marzec.toString())),
                      DataCell(Text(item.items[place.id].kwiecien.toString())),
                      DataCell(Text(item.items[place.id].maj.toString())),
                      DataCell(Text(item.items[place.id].czerwiec.toString())),
                      DataCell(Text(item.items[place.id].lipiec.toString())),
                      DataCell(Text(item.items[place.id].sierpien.toString())),
                      DataCell(Text(item.items[place.id].wrzesien.toString())),
                      DataCell(Text(item.items[place.id].pazdziernik.toString())),
                      DataCell(Text(item.items[place.id].listopad.toString())),
                      DataCell(Text(item.items[place.id].grudzien.toString())),
                    ]
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

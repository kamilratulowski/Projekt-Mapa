import 'package:flutter/material.dart';
import 'package:mapa_inf/data/card.dart';
import 'package:mapa_inf/data/data_place.dart';
import 'package:provider/provider.dart';

import '../screen/screens.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => Places()),
      ChangeNotifierProvider(create: (ctx) => Items()),
    ],
    child: const MyApp(),
  )
      // ChangeNotifierProvider(
      //   create: (context) => Places(),
      //   child: const MyApp(),
      // ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
      routes: {
        DetailScreen.routeName: (ctx) => const DetailScreen(),
        DataScreen.routeName: (ctx) => const DataScreen(),
      },
    );
  }
}

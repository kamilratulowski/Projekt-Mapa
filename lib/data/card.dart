import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class Place {
  final int id;
  final String name;
  final String place;
  final String description;
  final String imageUrl;
  final LatLng latlng;

  Place({
    required this.id,
    required this.name,
    required this.place,
    required this.description,
    required this.imageUrl,
    required this.latlng,
  });
}

class Places with ChangeNotifier {
  final List<Place> _items = [
    Place(
      id: 1,
      name: 'Dolina Chochołowska',
      place: 'Witów',
      description: 'Najdłuższa i największa dolina w polskich Tatrach, znajdująca się na zachodnim skraju polskich Tatr Zachodnich i stanowiąca orograficznie lewą odnogę doliny Czarnego Dunajca. Zajmuje obszar ponad 35 km² i ma długość ok. 10 km. Jest doliną walną. Administracyjnie leży na terenie wsi Witów.',
      imageUrl: 'https://www.kartatatrzanska.pl/blog/wp-content/uploads/2019/06/DSC08307v1.jpg',
      latlng: LatLng(49.2845888, 19.8442956),
    ),
    Place(
      id: 2,
      name: 'Kasprowy Wierch',
      place: 'Zakopane',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Kasprowy_Wierch.jpg',
      description: 'Szczyt w Tatrach Zachodnich o wysokości 1987 m. Kasprowy Wierch położony jest w grani głównej Tatr i znajduje się zarazem na granicy polsko-słowackiej. Szczyt góruje nad trzema dolinami walnymi: Doliną Bystrej i Doliną Suchej Wody Gąsienicowej po stronie polskiej oraz Doliną Cichą po stronie słowackiej.',
      latlng: LatLng(49.23175824, 19.98163184),
    ),
    Place(
      id: 3,
      name: 'Dolina Kościeliska',
      place: 'Kościelisko',
      description: 'Jest orograficznie prawą odnogą doliny Czarnego Dunajca, do której uchodzi w Kirach. Jest drugą co do wielkości doliną polskich Tatr (po Dolinie Chochołowskiej)[1] i najbardziej atrakcyjną pod względem ilości wapiennych form skalnych, wąwozów, jaskiń, a także historii. Jest też jednym z najczęściej przez turystów odwiedzanych miejsc w Tatrach',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Tatry_Dolina_Koscieliska_dron_%281%29.jpg/1024px-Tatry_Dolina_Koscieliska_dron_%281%29.jpg',
      latlng: LatLng(49.2955086, 19.8679939),
    ),
    Place(
      id: 4,
      name: 'Mała Łąka',
      place: 'Zakopane',
      description: 'Dolina walna w polskich Tatrach Zachodnich, położona pomiędzy Doliną Bystrej i Doliną Kościeliską.',
      imageUrl: 'https://mynaszlaku.pl/wp-content/uploads/2020/05/dolina-malej-laki.jpg',
      latlng: LatLng(49.26634607, 19.90070137),
    ),
    Place(
      id: 5,
      name: 'Dolina Strążyska',
      place: 'Zakopane',
      description: 'dolina w polskich Tatrach Zachodnich, położona pomiędzy Doliną ku Dziurze a Doliną za Bramką. Właściwa nazwa doliny pochodzi od słowa strąga, w gwarze podhalańskiej oznaczającego rodzaj zagrody przeznaczonej do dojenia owiec.Ma powierzchnię ok. 4 km² i długość 3 km.',
      imageUrl: 'https://hasajacezajace.com/wp-content/uploads/2020/01/ds-11.jpg',
      latlng: LatLng(49.27151724, 19.93270785),
    ),
    Place(
      id: 6,
      name: 'Dolina Lejowa',
      place: 'Zakopane',
      description: 'Dolina reglowa w polskich Tatrach Zachodnich, położona pomiędzy Doliną Kościeliską a Doliną Chochołowską. Jest środkową odnogą doliny Czarnego Dunajca.',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Tatry_Dolina_Lejowa_dron_%281%29.jpg/240px-Tatry_Dolina_Lejowa_dron_%281%29.jpg',
      latlng: LatLng(49.27748831, 19.84974375),
    ),
    Place(
      id: 7,
      name: 'Kalatówki',
      place: 'Zakopane',
      description: 'Polana reglowa leżąca w Dolinie Bystrej w Tatrach Zachodnich. Jest to stosunkowo płaski, otwarty teren, otoczony z wszystkich stron lasem, z widokami na rejon Kasprowego Wierchu',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Kalat%C3%B3wki_Kondratowy_Wierch.jpg/250px-Kalat%C3%B3wki_Kondratowy_Wierch.jpg',
      latlng: LatLng(49.25899633, 19.96621014),
    ),
    Place(
      id: 8,
      name: 'Dolina Gorczykowa',
      place: 'Zakopane',
      description: 'Dolina w Tatrach Zachodnich, będąca odgałęzieniem Doliny Bystrej',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Dolina_Goryczkowa_a1.jpg/1200px-Dolina_Goryczkowa_a1.jpg',
      latlng: LatLng(49.23048299, 19.97543256),
    ),
    Place(
      id: 9,
      name: 'Dolina Białego',
      place: 'Zakopane',
      description: 'Dolina reglowa w Tatrach Zachodnich, położona pomiędzy grzbietami Krokwi i Sarniej Skały.',
      imageUrl: 'https://mynaszlaku.pl/wp-content/uploads/2020/05/dolina-bialego-potoku-w-tatrach.jpg',
      latlng: LatLng(49.27653095, 19.95757676),
    ),
  ];

  Place findById(int id) {
    return _items.firstWhere((place) => place.id == id);
  }

  List<Place> get items {
    return [..._items];
  }


}


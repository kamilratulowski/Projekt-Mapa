import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);
  static const routeName = '/data-screen';

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  


  List<DataColumn> _createColumns() {
    return const [
      DataColumn(label: Text('Miejsce')),
      DataColumn(label: Text('Styczeń')),
      DataColumn(label: Text('Luty')),
      DataColumn(label: Text('Marzec')),
      DataColumn(label: Text('Kwiecień')),
      DataColumn(label: Text('Maj')),
      DataColumn(label: Text('Czerwiec')),
      DataColumn(label: Text('Lipiec')),
      DataColumn(label: Text('Sierpień')),
      DataColumn(label: Text('Wrzesień')),
      DataColumn(label: Text('Październik')),
      DataColumn(label: Text('Listopad')),
      DataColumn(label: Text('Grudzień')),
    ];
  }

  List<DataRow> _createRows() {
    return [
      const DataRow(cells: [
        DataCell(Text('Dolina Chochołowska')),
        DataCell(Text('23.647')),
        DataCell(Text('22.752')),
        DataCell(Text('3.943')),
        DataCell(Text('0')),
        DataCell(Text('9.671')),
        DataCell(Text('21.990')),
        DataCell(Text('47.499')),
        DataCell(Text('53.142')),
        DataCell(Text('34.527')),
        DataCell(Text('9.885')),
        DataCell(Text('8.660')),
        DataCell(Text('7.692')),
      ]),
      const DataRow(cells: [
        DataCell(Text('Kasprowy Wierch')),
        DataCell(Text('55.695')),
        DataCell(Text('47.777')),
        DataCell(Text('12.410')),
        DataCell(Text('0')),
        DataCell(Text('9.134')),
        DataCell(Text('25.231')),
        DataCell(Text('54.730')),
        DataCell(Text('47.168')),
        DataCell(Text('41.719')),
        DataCell(Text('16.662')),
        DataCell(Text('11.372')),
        DataCell(Text('11.966')),
      ]),
      const DataRow(cells: [
        DataCell(Text('Dolina Kościeliska')),
        DataCell(Text('36.358')),
        DataCell(Text('39.503')),
        DataCell(Text('892')),
        DataCell(Text('0')),
        DataCell(Text('11.442')),
        DataCell(Text('38.867')),
        DataCell(Text('91.360')),
        DataCell(Text('96.378')),
        DataCell(Text('62.215')),
        DataCell(Text('20.866')),
        DataCell(Text('13.076')),
        DataCell(Text('13.183')),
      ]),
      const DataRow(cells: [
        DataCell(Text('Dolina Mała Łąka')),
        DataCell(Text('1.965')),
        DataCell(Text('1.812')),
        DataCell(Text('2.060')),
        DataCell(Text('2.021')),
        DataCell(Text('5.746')),
        DataCell(Text('13.666')),
        DataCell(Text('15.875')),
        DataCell(Text('10.599')),
        DataCell(Text('2.895')),
        DataCell(Text('2.377')),
        DataCell(Text('1.596')),
        DataCell(Text('Brak danych')),
      ]),
      const DataRow(cells: [
        DataCell(Text('Dolina Strążyska')),
        DataCell(Text('13.676')),
        DataCell(Text('14.024')),
        DataCell(Text('2.429')),
        DataCell(Text('898')),
        DataCell(Text('6.431')),
        DataCell(Text('20.309')),
        DataCell(Text('47.196')),
        DataCell(Text('49.871')),
        DataCell(Text('32.614')),
        DataCell(Text('11.177')),
        DataCell(Text('6.738')),
        DataCell(Text('6.612')),
      ]),
      const DataRow(cells: [
        DataCell(Text('Dolina Lejowa')),
        DataCell(Text('Brak danych')),
        DataCell(Text('Brak danych')),
        DataCell(Text('Brak danych')),
        DataCell(Text('Brak danych')),
        DataCell(Text('Brak danych')),
        DataCell(Text('Brak danych')),
        DataCell(Text('2.850')),
        DataCell(Text('4.582')),
        DataCell(Text('2.289')),
        DataCell(Text('327')),
        DataCell(Text('Brak danych')),
        DataCell(Text('Brak danych')),
      ]),
      const DataRow(cells: [
        DataCell(Text('Kalatówki')),
        DataCell(Text('10.241')),
        DataCell(Text('12.350')),
        DataCell(Text('3.092')),
        DataCell(Text('0')),
        DataCell(Text('3.183')),
        DataCell(Text('1.328')),
        DataCell(Text('24.595')),
        DataCell(Text('25.877')),
        DataCell(Text('20.938')),
        DataCell(Text('6.548')),
        DataCell(Text('4.301')),
        DataCell(Text('3.486')),
      ]),
      const DataRow(cells: [
        DataCell(Text('Dolina Gorczykowa')),
        DataCell(Text('3.266')),
        DataCell(Text('3.682')),
        DataCell(Text('1.305')),
        DataCell(Text('0')),
        DataCell(Text('1.474')),
        DataCell(Text('5.770')),
        DataCell(Text('18.261')),
        DataCell(Text('19.167')),
        DataCell(Text('14.779')),
        DataCell(Text('3.587')),
        DataCell(Text('3.161')),
        DataCell(Text('2.511')),
      ]),
      const DataRow(cells: [
        DataCell(Text('Dolina Białego')),
        DataCell(Text('5.949')),
        DataCell(Text('6.111')),
        DataCell(Text('1.060')),
        DataCell(Text('586')),
        DataCell(Text('2.867')),
        DataCell(Text('8.142')),
        DataCell(Text('18.681')),
        DataCell(Text('21.152')),
        DataCell(Text('12.872')),
        DataCell(Text('4.168')),
        DataCell(Text('2.395')),
        DataCell(Text('2.575')),
      ]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: _createColumns(),
      rows: _createRows(),
    );
  }
}

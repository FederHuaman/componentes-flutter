import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _contruirListaCorta(),
      ),
    ));
  }

  List<Widget> _contruirLista() {
    List<Widget> list = List<Widget>();

    for (var i = 0; i < opciones.length; i++) {
      list
        ..add(ListTile(
          title: Text('${opciones[i]}'),
        ))
        ..add(Divider());
    }
    return list;
  }

  List<Widget> _contruirListaCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$item'), 
            leading: Icon(Icons.adb),
            trailing: Icon(Icons.keyboard_arrow_left),
            onTap: () {},
            selected: false,
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}

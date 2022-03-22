import 'package:flutter/material.dart';
import 'package:foodapp/src/provider/menu_provider.dart';
import 'package:foodapp/src/utils/icono_string_util.dart';

class PerfilPage extends StatelessWidget {
  // const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _detPer(),
          SizedBox(
            height: 20.0,
          ),
          _lista(),
          SizedBox(
            height: 5.0,
          ),
          _logout(context)
        ],
      ),
    );
  }

  Widget _detPer() {
    return Container(
      width: double.infinity,
      height: 250.0,
      color: Colors.red,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _imagen(
              'https://i.pinimg.com/564x/f9/d0/11/f9d011f255558e7f252417ed2a4be010.jpg'),
          Text(
            'José Guillermo Cima Tamay',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Información adicional.',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          )
        ],
      )),
    );
  }

  Widget _imagen(String image) {
    final accion =
        Container(height: 80.0, child: Image(image: NetworkImage('$image')));

    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(360.0),
                  child: accion,
                ),
              ],
            )),
        SizedBox(height: 15.0),
      ],
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    //menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return Column(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];

    if (data == null) {
      return [];
    }

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title:
            Text(opt['texto'], style: TextStyle(fontWeight: FontWeight.bold)),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          //     final route = MaterialPageRoute(builder: (context) => AlertPage());
          //     Navigator.push(context, route);
        },
      );
      opciones..add(widgetTemp);
    });
    return opciones;
  }

  Widget _logout(BuildContext context) {
    return ListTile(
        title: Text('Logout', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Icon(Icons.logout, color: Colors.black),
        onTap: () => Navigator.pushNamed(context, 'welcome'));
  }
}

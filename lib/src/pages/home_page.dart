import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTitulo = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
  );
  final estiloSubtitulo = TextStyle(
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            _Skip(context),
            SizedBox(height: 20.0),
            _CrearImagen(),
            SizedBox(height: 20.0),
            _CrearTexto(),
            SizedBox(height: 20.0),
            _Boton(context)
          ],
        ),
      ),
    ));
  }

  Widget _CrearImagen() {
    return Image(
        image: NetworkImage(
            "https://img.freepik.com/vector-gratis/repartidor-moto-mascara_23-2148498576.jpg?size=338&ext=jpg"));
  }

  Widget _CrearTexto() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'Delivery To Your Home',
              textAlign: TextAlign.center,
              style: estiloTitulo,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Lorem Ipsum dolor sit amet conse te sadipscing elitr, sed diam ant',
            style: estiloSubtitulo,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _Boton(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
          ),
          child: Text(
            'Let\'s Start',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () => Navigator.pushNamed(context, 'welcome'),
        ),
      ),
    );
  }

  Widget _Skip(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, onPrimary: Colors.black, elevation: 0),
        child: Text(
          'Skip',
          style: TextStyle(fontSize: 10.0),
        ),
        onPressed: () => Navigator.pushNamed(context, 'eFood'),
      ),
    );
  }
}

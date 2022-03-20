import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  String _numero = '';
  bool _bloquearCheck = false;
  String _password = "";

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          children: <Widget>[
            _Imagen(),
            _Titulo(),
            SizedBox(height: 5.0),
            _CrearNum(),
            Divider(),
            _CrearPassword(),
            _crearAcciones(),
            SizedBox(height: 10.0),
            _Boton(context),
            _createAccount()
          ]),
    );
  }

  Widget _CrearNum() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Expanded(
        child: TextField(
          //autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            counter: Text('Letras ${_numero.length}'),
            hintText: 'Mobile Number',
            labelText: 'Mobile Number',
            helperText: 'Mobile Number',
          ),
          onChanged: (valor) {
            //print(_nombre);
            setState(() {
              _numero = valor;
            });
          },
        ),
      ),
    );
  }

  Widget _CrearPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: 'Password',
                labelText: 'Password',
              ),
              onChanged: (_bloquearCheck)
                  ? null
                  : (valor) {
                      setState(() {
                        _password = valor;
                      });
                    },
            ),
          ),
        ],
      ),
    );
  }

  Widget _Imagen() {
    return Image(
      image: NetworkImage(
          "https://img.freepik.com/vector-gratis/repartidor-moto-mascara_23-2148498576.jpg?size=338&ext=jpg"),
    );
  }

  Widget _Titulo() {
    return Text(
      "Login",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    );
  }

  Widget _crearAcciones() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: _accionCheck()),
          Expanded(child: _accionRem()),
        ],
      ),
    );
  }

  Widget _accionCheck() {
    return Column(
      children: [
        CheckboxListTile(
          title: Text('Remember me'),
          value: _bloquearCheck,
          onChanged: (valor) {
            setState(() {
              _bloquearCheck = valor!;
            });
          },
        ),
      ],
    );
  }

  Widget _accionRem() {
    return Column(
      children: [
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white, onPrimary: Colors.black, elevation: 0),
            child: Text(
              'Forget Password?',
              style: TextStyle(fontSize: 15.0),
            ),
            onPressed: () {},
          ),
        ),
      ],
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
            padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
          ),
          child: Text(
            'Login',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () => Navigator.pushNamed(context, 'perfil'),
        ),
      ),
    );
  }

  Widget _createAccount() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Create in account?",
              style: TextStyle(fontSize: 10.0, color: Colors.grey)),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, onPrimary: Colors.black, elevation: 0),
              child: Text(
                'singup',
                style: TextStyle(fontSize: 10.0),
              ),
              onPressed: () => Navigator.pushNamed(context, 'singup'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyPerfil extends StatefulWidget {
  MyPerfil({Key? key}) : super(key: key);

  @override
  State<MyPerfil> createState() => _MyPerfilState();
}

class _MyPerfilState extends State<MyPerfil> {
  String _nombre = 'José Guillermo';
  String _apellido = 'Cima Tamay';
  String _numero = '9831112233';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pushNamed(context, 'perfil'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 35.0,
          ),
          _perfil(),
          SizedBox(
            height: 35.0,
          ),
          _inputs(),
          SizedBox(
            height: 20.0,
          ),
          _deliveryAdress(),
        ],
      ),
    );
  }

  Widget _imagen(String image) {
    final accion = Container(
        height: 70.0,
        width: 70.0,
        child: Image(
          image: NetworkImage('$image'),
          width: 70.0,
          height: 70.0,
          fit: BoxFit.cover,
        ));

    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 4.0),
            ),
            child: Column(
              children: [
                ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(35),
                  child: (accion),
                ),
              ],
            )),
      ],
    );
  }

  Widget _perfil() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _imagen(
            'https://i.pinimg.com/564x/f9/d0/11/f9d011f255558e7f252417ed2a4be010.jpg'),
        Text(
          '$_nombre $_apellido ',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
        )
      ],
    );
  }

  Widget _crearNombre() {
    return Center(
      child: TextField(
        //autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            helperText: 'First Name',
            labelText: 'First Name'),

        onChanged: (valor) {
          //print(_nombre);

          setState(() {
            _nombre = valor;
          });
        },
      ),
    );
  }

  Widget _crearApellido() {
    return Center(
      child: TextField(
        //autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: 'Last Name',
          helperText: 'Last Name',
        ),
        onChanged: (valor) {
          //print(_nombre);
          setState(() {
            _apellido = valor;
          });
        },
      ),
    );
  }

  Widget _crearNum() {
    return Center(
      child: TextField(
        //autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
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
    );
  }

  Widget _inputs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _crearNombre(),
          SizedBox(height: 15.0),
          _crearApellido(),
          SizedBox(height: 15.0),
          _crearNum()
        ],
      ),
    );
  }

  Widget _deliveryAdress() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Delivery Address',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.black)),
                  Text('Add',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          Card(
            color: Color.fromARGB(255, 231, 231, 231),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            elevation: 0,
            child: Container(
              height: 60.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.home_outlined,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '52. Desai Village',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        _image(
                            'https://elordenmundial.com/wp-content/uploads/2021/03/mapa-politico-brasil.png'),
                        SizedBox(
                          width: 5.0,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Color.fromARGB(255, 231, 231, 231),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            elevation: 0,
            child: Container(
              height: 60.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.work_outline,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Workplace',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Sector 123, Noida',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        _image(
                            'https://elordenmundial.com/wp-content/uploads/2021/03/mapa-politico-brasil.png'),
                        SizedBox(
                          width: 5.0,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image(String image) {
    final accion = Container(
        height: 50.0,
        width: 50.0,
        child: Image(
          image: NetworkImage('$image'),
          fit: BoxFit.cover,
        ));

    return Column(children: [
      Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: accion,
              ),
            ],
          ))
    ]);
  }
}

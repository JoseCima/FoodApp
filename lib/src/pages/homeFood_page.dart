import 'package:flutter/material.dart';

class eFoodPage extends StatelessWidget {
  // const eFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "eFood",
              style: TextStyle(color: Colors.red),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.black),
            ),
          ],
        ),
        leading: Icon(
          Icons.abc,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          _categories(),
          _menu(),
          _list(),
        ],
      )),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _categories() {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Categories',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _accion(
                  'https://thumbs.dreamstime.com/b/hamburguesas-del-vegano-con-las-empanadas-y-los-brotes-verdes-cosecha-cuadrada-de-remolachas-134457335.jpg',
                  'Hamburguesas'),
              _accion(
                  'https://media-cdn.tripadvisor.com/media/photo-s/0d/0c/20/33/pizza-express-belen.jpg',
                  'Pizzas'),
              _accion(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSBjoxUc4G_hpTEkn3fNOnDJITGl8UFmkc_A&usqp=CAU',
                  'Pastas'),
              _accion(
                  'https://bakeitwithlove.com/wp-content/uploads/2016/05/Crab-Egg-Drop-Soup-lg-sq.jpg',
                  'Sopas'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _accion(String image, String texto) {
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
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.black)),
      ],
    );
  }

  Widget _menu() {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Set Menu',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              bViewAll(),
            ],
          ),
          Container(
            height: 185.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _optMenu(
                    'https://static2.abc.es/media/familia/2018/05/23/Minevera_Pasta-k4KC--620x349@abc.jpg',
                    'Spaguetti a la boloñesa',
                    '60'),
                _optMenu(
                    'https://www.paulinacocina.net/wp-content/uploads/2020/08/tacos-meat-food-mexican-lunch-dinner-640x480.jpg',
                    'Tacos',
                    '50'),
                _optMenu(
                    'https://i0.wp.com/goula.lat/wp-content/uploads/2019/12/hamburguesa-beyond-meat-scaled-e1577396155298.jpg?fit=1600%2C1068&ssl=1',
                    'Hamburguesa',
                    '80'),
                _optMenu(
                    'https://img.buzzfeed.com/buzzfeed-static/static/2015-04/14/11/campaign_images/webdr13/23-comidas-que-puedes-preparar-aunque-estes-en-ba-2-13224-1429024538-7_dblbig.jpg?resize=1200:*',
                    'Macarrones con queso',
                    '70'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bViewAll() {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, onPrimary: Colors.grey, elevation: 0),
        child: Text(
          'View All',
          style: TextStyle(fontSize: 10.0),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _optMenu(String imagen, String nombrecomida, String precio) {
    return Container(
      height: 170.0,
      width: 165.0,
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _imagenMenu('$imagen'),
              Text('$nombrecomida'),
              Text('Set Menu'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('\$$precio'),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _imagenMenu(String image) {
    final accion = Container(
        height: 80.0,
        width: double.infinity,
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

  Widget _list() {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Menu',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              bViewAll(),
            ],
          ),
          Container(
            child: Column(
              children: <Widget>[
                _optList(
                    'https://gustmas.com/wp-content/uploads/2019/04/caldo-de-pollo-casero-300x200.jpg',
                    'Caldo de pollo',
                    '50'),
                _optList(
                    'https://images.aws.nestle.recipes/resized/108b152549a95852f9429877134507c4_Alitas-BBQ_1200_600.jpg',
                    'Alitas BBQ',
                    '90'),
                _optList(
                    'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2018/11/pechugas-rellenas-en-salsa-de-pimiento.jpg',
                    'Pechuga rellena',
                    '105'),
                _optList(
                    'https://www.tureceta.net/wp-content/uploads/2019/12/Pasta-Alfredo-1024x576.jpg',
                    'Pasta 3 quesos',
                    '65'),
                _optList(
                    'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2021/01/camarones-la-diabla.jpg',
                    'Camarones a la diabla',
                    '130'),
                _optList(
                    'https://recetacubana.com/wp-content/uploads/2020/06/pescado-empanizado.jpg',
                    'Filete empanizado',
                    '70'),
                _optList(
                    'https://www.recetassalvador.com/base/stock/Recipe/137-image/137-image_web.jpg',
                    'Puerco entomatado',
                    '75'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imagenLista(String imagen) {
    final accion = Container(
        width: 100.0,
        height: 80.0,
        child: Image(
          image: NetworkImage(
            '$imagen',
          ),
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

  Widget _optList(String imagen, String nombrecomida, String precio) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: [_imagenLista('$imagen')],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$nombrecomida',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                ],
              ),
              SizedBox(height: 2.0),
              Text('\$$precio',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromARGB(255, 252, 252, 253),
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.grey))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30.0,
                  color: Colors.grey,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  size: 30.0,
                  color: Colors.grey,
                ),
                label: ('Favorito')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.apps_sharp,
                  size: 30.0,
                  color: Colors.grey,
                ),
                label: ('Menu'))
          ],
          fixedColor: Colors.grey,
        ));
  }
}

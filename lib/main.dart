import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:synergiia_app/components/horizontal_listview.dart';
import 'package:synergiia_app/components/products.dart';
import 'package:synergiia_app/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/sn_gen.jpg'),
          AssetImage('images/d6.jpg'),
          AssetImage('images/d5.jpg'),
          AssetImage('images/d3.jpg'),
          AssetImage('images/d4.jpg'),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(microseconds: 1000),
        indicatorBgPadding: 5.0,
        dotColor: Colors.grey[400],
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5, //changing the shade from the appBar
        backgroundColor: Colors.blueAccent[200],
        title: Text(
          'SynergiiApp',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //  header
            new UserAccountsDrawerHeader(
              accountName: Text('Vika Zvonaryova'),
              accountEmail: Text('vika.zvonaryova.24@gmail.com'),
              currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                backgroundColor: Colors.white60,
                child: Icon(
                  Icons.person,
                  color: Colors.black38,
                ),
              )),
              decoration: new BoxDecoration(color: Colors.blueAccent[400]),
            ),

            //  body

            //HomePage
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.black54,
                ),
              ),
            ),

            //MyAccount
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.black54,
                ),
              ),
            ),

            //MyOrder
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.black54,
                ),
              ),
            ),

            //Categories
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.black54,
                ),
              ),
            ),

            //Favorites
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red[300],
                ),
              ),
            ),

            Divider(),

            //Settings
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[700],
                ),
              ),
            ),

            //About
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //image carousel begins here
          image_carousel,

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              child: new Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),

          //Horizontal ListView begins here
          HorizontalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.center,
              child: new Text(
                'Favorite products',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //grid view
          Flexible(
            child: Products(),
          )
        ],
      ),
    );
  }
}

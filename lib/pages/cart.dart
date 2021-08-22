import 'package:flutter/material.dart';
// my imports
import 'package:synergiia_app/components/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5, //changing the shade from the appBar
        backgroundColor: Colors.blueAccent[200],
        title: Text(
          'Your cart',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.blueAccent,
            ),
            onPressed: () {},
          )
        ],
      ),
      // the body
      body: Cart_products(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: ListTile(
              title: Text("Total:"),
              subtitle: Text("\₴230"),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              child: Text(
                "Check out",
                style: TextStyle(color: Colors.white),
              ),
                color: Colors.blueAccent,
            ))
          ],
        ),
      ),
    );
  }
}

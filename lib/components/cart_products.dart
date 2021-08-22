import 'package:flutter/material.dart';
import 'package:synergiia_app/pages/cart.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var productsOnTheCart = [
    {
      "name": "Oatmeal with milk",
      "picture": "images/products/oatmeal.jpg",
      "size": "small",
      "container": "glass",
      "price": 230,
      "quantity": 1,
    },
    {
      "name": "Pause for Detox",
      "picture": "images/products/detox.jpg",
      "size": "big",
      "container": "metallic",
      "price": 320,
      "quantity": 1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsOnTheCart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: productsOnTheCart[index]["name"],
            cart_prod_picture: productsOnTheCart[index]["picture"],
            cart_prod_size: productsOnTheCart[index]["size"],
            cart_prod_container: productsOnTheCart[index]["container"],
            cart_prod_price: productsOnTheCart[index]["price"],
            cart_prod_quantity: productsOnTheCart[index]["quantity"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_size;
  final cart_prod_container;
  final cart_prod_price;
  final cart_prod_quantity;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_size,
      this.cart_prod_container,
      this.cart_prod_price,
      this.cart_prod_quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100.0,
        child: ListTile(
          // ======== LEADING section =========
          leading: Image.asset(cart_prod_picture, width: 50.0, height: 60.0),

          // ======== TITLE section ========
          title: Text(cart_prod_name),

          // ======= SUBTITLE section ========
          subtitle: Column(
            children: [
              // ROW inside of COLUMN
              Row(
                children: [
                  // ========= section for the size of the product =======
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text("Size:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(cart_prod_size,
                        style: TextStyle(color: Colors.blueAccent)),
                  ),

                  // ========= section for the container choice ========

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                    child: Text("Container:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(cart_prod_container,
                        style: TextStyle(color: Colors.blueAccent)),
                  ),
                ],
              ),

              // ========== section for the product price ========
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "\₴${cart_prod_price}",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                ),
              )
            ],
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Expanded(
            child: Column(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up)), //OVERFLOW ERROR
              ],
            ),
          ),),
        ),
    ),
    );
  }
}

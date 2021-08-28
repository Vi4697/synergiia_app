import 'package:flutter/material.dart';
import 'package:synergiia_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Oatmeal with milk",
      "picture": "images/products/oatmeal.jpg",
      "size": "small",
      "container": "glass",
      "old_price": 300,
      "price": 230,
    },
    {
      "name": "Pause for Detox",
      "picture": "images/products/detox.jpg",
      "size": "big",
      "container": "metallic",
      "old_price": 450,
      "price": 320,
    },
    {
      "name": "Power of thoughts",
      "picture": "images/products/power.jpg",
      "size": "small",
      "container": "glass",
      "old_price": 300,
      "price": 230,
    },
    {
      "name": "Happy Birthday!",
      "picture": "images/products/hb.jpg",
      "size": "small",
      "container": "metallic",
      "old_price": 250,
      "price": 170,
    },
    {
      "name": "Season spring-summer!",
      "picture": "images/products/lito.jpg",
      "size": "small",
      "container": "metallic",
      "old_price": 250,
      "price": 170,
    },
    {
      "name": "Deep secret Candle X",
      "picture": "images/products/svx.jpg",
      "size": "small",
      "container": "metallic",
      "old_price": 250,
      "price": 170,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_size: product_list[index]['size'],
              prod_container: product_list[index]['container'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_size;
  final prod_container;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_size,
    this.prod_container,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //here we are passing the values of the product to the product details page

                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_container: prod_container,
                    product_detail_picture: prod_picture,
                    product_detail_size: prod_size,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                  ))),

              child: GridTile(
                  footer: Container(
                    color: Colors.blue.shade100,
                    height: 40.0,
                    child: Row(children: <Widget>[
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black), ),),
                      ),
                      
                      //Text("\₴${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                    ],)
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
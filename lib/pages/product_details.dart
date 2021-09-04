import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
// my imports
import 'package:synergiia_app/main.dart';
import 'package:synergiia_app/pages/cart.dart';
import './home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  final product_detail_size;
  final product_detail_container;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_picture,
      this.product_detail_container,
      this.product_detail_size,
      this.product_detail_new_price,
      this.product_detail_old_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5, //changing the shade from the appBar
        backgroundColor: Colors.blueAccent[200],
        title: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            'SynergiiApp',
            style: TextStyle(color: Colors.white),
          ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
            },
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                //carousel of candle photos
                child: new Carousel(
                    boxFit: BoxFit.cover,
                    images: [
                      AssetImage(widget.product_detail_picture),
                      AssetImage('images/containers/cont_al1.jpg'),
                      AssetImage('images/containers/cont_kr1.jpg'),
                      AssetImage('images/containers/cont_st1.jpg'),
                    ],
                    autoplay: false),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "\₴${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: new Text(
                        "\₴${widget.product_detail_new_price}",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //       ========== the first buttons ========

          Row(
            children: <Widget>[
              // ========== the size button==========

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choose the size of the product"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                              color: Colors.blueAccent[200],
                              textColor: Colors.white,
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),

              // ========== the container button==========

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Container"),
                          content:
                              new Text("Choose the container for the product"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Close"),
                              color: Colors.blueAccent[200],
                              textColor: Colors.white,
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Cont-er"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),

              // ========== the Quantity button==========

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content:
                              new Text("Choose the quantity of the product"),
                          actions: <Widget>[
                            new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                                color: Colors.blueAccent[200],
                                textColor: Colors.white)
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Amount"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ))
            ],
          ),

          //       ========== the second buttons ========

          Row(
            children: <Widget>[
              // ========== the Quantity button==========

              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now")),
              ),

              new IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.red,
              ),

              new IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
              ),
            ],
          ),

          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text( //change for each
                "Ця свічка про часи, коли літні канікули добігали кінця "
                    "і вже час вертатися в місто, купляти новий щоденник,"
                    " уявляти як за 3 місяці змінилися однокласники і лише сподіватися"
                    " що хлопць Ілля вже забув як в останній день травня на прощання ти"
                    " зізналась в своїй симпатії ... кріііінж! \nАромат повністю відповідає"
                    " своїй назві – тут ти не знайдеш нічого крім стиглої"
                    " груші з бабциного саду!🤤 Скоріше бронюй свою, в наявності лише"
                    " 15 свічок, а до нового навчального року ще далеко!"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Brand Synergiia"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product details (smell/hours burning)",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Similar products'),
          ),

          //SIMILAR PRODUCTS SECTION
          Container(
            height: 420.0,
            child: Similar_products(),
          )

        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
      "name": "Power of thoughts",
      "picture": "images/products/power.jpg",
      "size": "small",
      "container": "glass",
      "old_price": 300,
      "price": 230,
    },
    {
      "name": "Deep secret Candle X",
      "picture": "images/products/svx.jpg",
      "size": "small",
      "container": "metallic",
      "old_price": 250,
      "price": 170,
    },{
      "name": "Pause for Detox",
      "picture": "images/products/detox.jpg",
      "size": "big",
      "container": "metallic",
      "old_price": 450,
      "price": 320,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_size: product_list[index]['size'],
            prod_container: product_list[index]['container'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_size;
  final prod_container;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
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
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 40.0,
                              child: Text(
                              prod_name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),)
                          ),
                          // Text(
                          //   "\₴${prod_price}",
                          //   style: TextStyle(
                          //       color: Colors.red, fontWeight: FontWeight.bold),
                          // )
                        ],
                      )),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

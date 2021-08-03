import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:synergiia_app/main.dart';
//import '';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  final product_detail_size;
  final product_detail_container;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_container,
    this.product_detail_size,
    this.product_detail_new_price,
    this.product_detail_old_price
  });

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
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
          child: Text('SynergiiApp',
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
            onPressed: () {},
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
                    autoplay: false
                ),

              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("\₴${widget.product_detail_old_price}",
                          style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                      ),
                      Expanded(
                          child: new Text("\₴${widget.product_detail_new_price}",
                          style: TextStyle(color: Colors.red, fontSize: 18.0, fontWeight: FontWeight.bold),)
                      ),
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
                  child: MaterialButton(onPressed: (){
                    showDialog(context: context, 
                        builder: (context)
                    {
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the size of the product"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child:  new Text("close"), color: Colors.blueAccent[200], textColor: Colors.white,)
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
                  )
              ),


              // ========== the container button==========

              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context) {
                        return new AlertDialog(
                          title: new Text("Container"),
                          content: new Text("Choose the container for the product"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("Close"),color: Colors.blueAccent[200], textColor: Colors.white,)
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
                          child: new Text("Cont-r"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),

                      ],
                    ),
                  )
              ),


              // ========== the Quantity button==========

              Expanded(
                  child: MaterialButton(onPressed: (){
                    showDialog(context: context,
                        builder: (context){

                      return new AlertDialog(
                        title: new Text("Quantity"),
                        content: new Text("Choose the quantity of the product"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("close"),color: Colors.blueAccent[200], textColor: Colors.white)
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
                  )
              )
            ],
          ),


          //       ========== the second buttons ========


          Row(
            children: <Widget>[
              // ========== the Quantity button==========

              Expanded(
                  child: MaterialButton(onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now")
                  ),
              ),

              new IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart), color: Colors.red,),

              new IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border), color: Colors.red,),
              
            ],
          ),

          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Ця свічка про часи, коли літні канікули добігали кінця і вже час вертатися в місто, купляти новий щоденник, уявляти як за 3 місяці змінилися однокласники і лише сподіватися що хлопць Ілля вже забув як в останній день травня на прощання ти зізналась в своїй симпатії ... кріііінж! \nАромат повністю відповідає своїй назві – тут ти не знайдеш нічого крім стиглої груші з бабциного саду!🤤 Скоріше бронюй свою, в наявності лише 15 свічок, а до нового навчального року ще далеко!"),
          ),
          Divider(),
      new Row(
        children: <Widget>[
          Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
          child: new Text("Product name", style: TextStyle(color: Colors.grey),),),
          Padding(padding: EdgeInsets.all(5.0),
          child: new Text(widget.product_detail_name),)
        ],
      ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Brand Synergiia"),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition(smell/hours burning)", style: TextStyle(color: Colors.grey),),)
            ],
          )
        ],
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../shared/product.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/partials.dart';
import '../shared/buttons.dart';

class ProductPage extends StatefulWidget {
  final Product productData;

  ProductPage({required this.productData});

  @override
  ProductPageState createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgColor,
          centerTitle: true,
          leading: BackButton(
            color: darkText,
          ),
          title: Text(widget.productData.name, style: h4),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(top: 100, bottom: 100),
                        padding: EdgeInsets.only(top: 100, bottom: 50),
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 15,
                                  spreadRadius: 5,
                                  color: Color.fromRGBO(0, 0, 0, .05))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(widget.productData.name, style: h5),
                            Text(widget.productData.price, style: h3),
                            Container(
                              margin: EdgeInsets.only(top: 5, bottom: 20),
                              child: RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 50.0,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                onRatingUpdate: (rating) {
                                  setState(() {});
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 25),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Text('Quantity', style: h6),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 55,
                                        height: 55,
                                        child: OutlinedButton(
                                          onPressed: () {
                                            setState(() {
                                              _quantity += 1;
                                            });
                                          },
                                          child: Icon(Icons.add),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Text(_quantity.toString(),
                                            style: h3),
                                      ),
                                      SizedBox(
                                        width: 55,
                                        height: 55,
                                        child: OutlinedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (_quantity == 1) return;
                                              _quantity -= 1;
                                            });
                                          },
                                          child: Icon(Icons.remove),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 180,
                              child: froyoOutlinedBtn('Buy Now', () {}),
                            ),
                            SizedBox(
                              width: 180,
                              child: froyoTextBtn('Add to Cart', () {}),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 200,
                        height: 160,
                        child: foodItem(widget.productData,
                            isProductPage: true,
                            onTapped: () {},
                            imgWidth: 250,
                            onLike: () {}),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:local_shoes/constants.dart';
import 'package:local_shoes/details/component/color_with_fav_btn.dart';
import 'package:local_shoes/models/Product.dart';
import 'package:intl/intl.dart';

class ProductTitleWithImage extends StatelessWidget {
   ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;
  final formatCurrency = new NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Column(
                children: [
                  SizedBox(height:10),
                  Text(
                    "Sepatu Lokal",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                product.title,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
                ],
              ),
              SizedBox(width: kDefaultPaddin),
              CounterWithFavBtn(),
            ],
          ),
          
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "${formatCurrency.format(product.price)}",
                      style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(
                          color: Colors.white, 
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

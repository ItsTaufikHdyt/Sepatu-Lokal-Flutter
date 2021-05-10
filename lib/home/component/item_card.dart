import 'package:flutter/material.dart';
import 'package:local_shoes/constants.dart';
import 'package:local_shoes/models/Product.dart';
import 'package:intl/intl.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  final formatCurrency = new NumberFormat.simpleCurrency(locale: 'id_ID');
   ItemCard({
    Key key, this.press, this.product
  }) :  super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children: <Widget> [
          Expanded(child: Container(
            padding : EdgeInsets.all(kDefaultPaddin),
            decoration : BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(product.image),
            ),
          ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            product.title,
            style: TextStyle(color: kTextLightColor)
          ),
          ),
           Text(
            "Rp. ${formatCurrency.format(product.price)}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ]
      ),
      
    );
  }
}
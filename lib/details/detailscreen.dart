import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_shoes/constants.dart';
import 'package:local_shoes/models/Product.dart';
import 'component/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  
    return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: SvgPicture.asset(
        'assets/icons/back.svg',
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg"),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset("assets/icons/cart.svg"),
        onPressed: () {},
      ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
  );
}

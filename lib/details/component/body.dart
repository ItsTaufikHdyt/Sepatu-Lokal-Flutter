import 'package:flutter/material.dart';
import 'package:local_shoes/constants.dart';
import 'package:local_shoes/details/component/color_and_size.dart';
import 'package:local_shoes/details/component/color_with_fav_btn.dart';
import 'package:local_shoes/details/component/description.dart';
import 'package:local_shoes/details/component/product_title_with_img.dart';
import 'package:local_shoes/models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: 
                      Column(
                        children: <Widget>[
                          ColorAndSize(product: product),
                          SizedBox(height: kDefaultPaddin / 2),
                          Description(product: product),
                          SizedBox(height: kDefaultPaddin / 2),
                          
                        ],
                      ),
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

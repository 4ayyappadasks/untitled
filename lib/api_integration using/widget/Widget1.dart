import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../modal/product model.dart';

class product_tile extends StatelessWidget {

  final Welcome product;

  product_tile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(product.name!),
      leading: Container(
        width: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle
        ),
        child: CachedNetworkImage(
          imageUrl:("${product.profileImage}"),
          fit: BoxFit.cover,),
      ),
        subtitle: Text(product.email!),
      ),
    );
  }
}

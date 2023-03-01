import 'package:flutter/material.dart';

Card productCard(String imageUrl,String productTitle,String productPrice){
  return  Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 18.0 / 11.0,
          child: Image.asset(imageUrl),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(productTitle),
              const SizedBox(height: 8.0),
              Text(productPrice),
            ],
          ),
        ),
      ],
    ),);
}
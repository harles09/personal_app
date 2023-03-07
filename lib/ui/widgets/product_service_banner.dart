import 'package:flutter/material.dart';

class ProductServiceBanner extends StatelessWidget {
  final String imageUrl;

  const ProductServiceBanner({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

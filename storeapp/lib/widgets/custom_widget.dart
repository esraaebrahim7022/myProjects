import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.products});
  ProductsModel products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(.2),
                  spreadRadius: 0,
                  offset: const Offset(10, 10),
                )
              ]),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products.title.substring(0, 6),
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' ' ${products.price.toString()}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                right: 30,
                top: -60,
                child: Image.network(
                  products.image,
                  height: 100,
                  width: 100,
                ))
          ],
        ),
      ),
    );
  }
}

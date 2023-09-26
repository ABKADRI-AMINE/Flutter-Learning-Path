import 'package:flower_app/pages/checkout.dart';
import 'package:flower_app/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        bottom: 24,
                        child: Container(
                            child: Text(
                              "${Carttt.itemCount}",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(211, 164, 255, 193),
                                shape: BoxShape.circle)),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOut(),
                      ),
                    );
                        },
                        icon: Icon(Icons.add_shopping_cart),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      "\$ ${Carttt.price}",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              );
  }
}
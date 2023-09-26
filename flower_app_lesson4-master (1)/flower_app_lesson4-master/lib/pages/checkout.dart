import 'package:flower_app/provider/cart.dart';
import 'package:flower_app/shared/appbar.dart';
import 'package:flower_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("Checkout Screen"),
        actions: [ProductsAndPrice()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: Carttt.selectedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(Carttt.selectedProducts[index].name),
                        subtitle: Text(
                            "${Carttt.selectedProducts[index].price} - ${Carttt.selectedProducts[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              Carttt.selectedProducts[index].imgPath),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Carttt.delete(Carttt.selectedProducts[index]);
                            }, icon: Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Pay \$${Carttt.price} ",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_all_product.dart';
import 'package:storeapp/widgets/custom_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'New Trend',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ),
              )
            ]),
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
            child: FutureBuilder<List<ProductsModel>>(
              future: AllProductsService().getAllProduct(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return GridView.builder(
                      clipBehavior: Clip.none,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        //بيتحكم في عدد الاعمده
                        crossAxisCount: 2,
                        //بيتحكم بالعرض للطول
                        childAspectRatio: 1.5,
                        //بيتحكم ببعدهم عن بعض بالطول
                        crossAxisSpacing: 10,
                        //بيتحكم ببعدهم عن بعض بالعرض
                        mainAxisSpacing: 100,
                      ),
                      itemBuilder: (context, index) {
                        return const CustomCard();
                      });
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )));
  }
}

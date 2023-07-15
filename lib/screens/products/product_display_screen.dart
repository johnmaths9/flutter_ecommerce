import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/product_display_list_view.dart';
import 'package:ecommerce_app/widgets/top_container.dart';
import 'package:flutter/material.dart';

class ProductDisplayScreen extends StatefulWidget {
  const ProductDisplayScreen({super.key});

  @override
  State<ProductDisplayScreen> createState() => _ProductDisplayScreenState();
}

class _ProductDisplayScreenState extends State<ProductDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: Column(
          children: [
            TopContainer(searchBarTitle: "Search Product"),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ProductDislpayWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

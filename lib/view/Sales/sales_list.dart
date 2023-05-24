import 'package:flutter/material.dart';
import 'package:power_store1/view/Sales/sales_view.dart';

class SalesList extends StatelessWidget {
  const SalesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SalesView(
            image: 'assets/images/sale.gif',
          ),
          SalesView(
            image: 'assets/images/sale50.gif',
          ),

        ],
      ),
    );
  }
}

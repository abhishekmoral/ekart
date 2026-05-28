import 'package:ekart/common/wigets/appbar/appbar.dart';
import 'package:ekart/common/wigets/products/cart/cart_menu_icon.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return XAppBar(
      title: Text('Store'),
      actions: [XCartCounterIcon(onPressed: () {})],
    );
  }
}

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
        return const Scaffold(
      backgroundColor: floralWhite,
      body: Center(
        child: Text('Profile Page', style: TextStyle(color: spaceCadet),),
      ),
    );
  }
}
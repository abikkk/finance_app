import 'package:flutter/material.dart';

class SalesPurchaseScreen extends StatefulWidget {
  const SalesPurchaseScreen({super.key});

  @override
  State<SalesPurchaseScreen> createState() => _SalesPurchaseScreenState();
}

class _SalesPurchaseScreenState extends State<SalesPurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sales and Purchases'),
        ),
        body: const Placeholder());
  }
}

import 'package:flutter/material.dart';

class TradesScreen extends StatefulWidget {
  const TradesScreen({super.key, this.isSales = true});

  final bool isSales;

  @override
  State<TradesScreen> createState() => _TradesScreenState();
}

class _TradesScreenState extends State<TradesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.isSales ? 'Sales' : 'Purchases'),
        ),
        body: const Placeholder());
  }
}

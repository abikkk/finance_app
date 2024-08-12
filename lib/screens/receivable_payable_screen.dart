import 'package:flutter/material.dart';

class ReceivablePayableScreen extends StatefulWidget {
  const ReceivablePayableScreen({super.key});

  @override
  State<ReceivablePayableScreen> createState() => _ReceivablePayableScreenState();
}

class _ReceivablePayableScreenState extends State<ReceivablePayableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Receivables and Payables'),),
        body: const Placeholder());
  }
}

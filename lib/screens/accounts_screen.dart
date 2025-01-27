import 'package:flutter/material.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key, this.isReceivables = true});

  final bool isReceivables;

  @override
  State<AccountsScreen> createState() =>
      _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.isReceivables ? 'Receivables' : 'Payables'),
        ),
        body: const Placeholder());
  }
}

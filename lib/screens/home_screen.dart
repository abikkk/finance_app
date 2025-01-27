import 'package:finance_app/screens/home/accounts_overview.dart';
import 'package:finance_app/screens/home/dashboard.dart';
import 'package:finance_app/screens/home/trades_overview.dart';
import 'package:finance_app/utils/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                ))
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Dashboard(),
              TradesOverview(),
              // AccountsOverview(),
            ],
          ),
        ));
  }
}

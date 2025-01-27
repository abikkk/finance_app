import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/banking_screen.dart';
import '../screens/documents_screen.dart';
import '../screens/home/overview.dart';
import '../screens/inventories_screen.dart';
import '../screens/accounts_screen.dart';
import '../screens/report_screen.dart';
import '../screens/trades_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 40),
        children: [
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Dashboard'),
            onTap: () {
              Get.to(() => const Overview());
              // Navigator.pop(context);
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Text('Stock'),
          ),
          const Divider(
            indent: 10,
          ),
          ListTile(
            leading: const Icon(Icons.inventory),
            title: const Text('Inventories'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const InventoriesScreen());
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Text('Trades'),
          ),
          const Divider(
            indent: 10,
          ),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: const Text('Purchases'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const TradesScreen(
                    isSales: false,
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_outlined),
            title: const Text('Sales'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const TradesScreen());
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Text('Accounts'),
          ),
          const Divider(
            indent: 10,
          ),
          ListTile(
            leading: const Icon(Icons.payments_outlined),
            title: const Text('Receivables'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const AccountsScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.payments_outlined),
            title: const Text('Payable'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const AccountsScreen(isReceivables: false));
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Text('Banking'),
          ),
          const Divider(
            indent: 10,
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Banks'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const BankingScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Current'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const BankingScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Overdrafts'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const BankingScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Bank Guarantees'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const BankingScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Demands'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const BankingScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Terms'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const BankingScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Trust Receipts'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const BankingScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Credit Letters'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const BankingScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Cheques'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const BankingScreen());
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.report),
            title: const Text('Reports'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const ReportScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.document_scanner),
            title: const Text('Clients'),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const DocumentsScreen());
            },
          ),
        ],
      ),
    );
  }
}

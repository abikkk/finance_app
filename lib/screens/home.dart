import 'package:finance_app/screens/banking_screen.dart';
import 'package:finance_app/screens/calculator_screen.dart';
import 'package:finance_app/screens/documents_screen.dart';
import 'package:finance_app/screens/home/dashboard_screen.dart';
import 'package:finance_app/screens/home/overview_screen.dart';
import 'package:finance_app/screens/inventory_screen.dart';
import 'package:finance_app/screens/receivable_payable_screen.dart';
import 'package:finance_app/screens/report_screen.dart';
import 'package:finance_app/screens/sales_purchase_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.only(top: 40),
            children: [
              ListTile(
                leading: const Icon(Icons.insights),
                title: const Text('Overview'),
                onTap: () {
                  Get.to(() => const OverviewScreen());
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.point_of_sale_sharp),
                title: const Text('Sales/Purchase'),
                onTap: () {
                  // Navigator.pop(context);
                  Get.to(() => const SalesPurchaseScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.inventory),
                title: const Text('Inventory'),
                onTap: () {
                  // Navigator.pop(context);
                  Get.to(() => const InventoryScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.payments_outlined),
                title: const Text('Receivable/Payable'),
                onTap: () {
                  // Navigator.pop(context);
                  Get.to(() => const ReceivablePayableScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.currency_rupee),
                title: const Text('Banking'),
                onTap: () {
                  // Navigator.pop(context);
                  Get.to(() => const BankingScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.report),
                title: const Text('Report'),
                onTap: () {
                  // Navigator.pop(context);
                  Get.to(() => const ReportScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.document_scanner),
                title: const Text('Documents'),
                onTap: () {
                  // Navigator.pop(context);
                  Get.to(() => const DocumentsScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.calculate),
                title: const Text('Calculator'),
                onTap: () {
                  // Navigator.pop(context);
                  Get.to(() => const CalculatorScreen());
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Icon(Icons.currency_bitcoin_sharp),
        ),
        body: const Column(
          children: [DashboardScreen()],
        ));
  }
}

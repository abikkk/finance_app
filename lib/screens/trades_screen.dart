import 'package:finance_app/utils/stat_cards.dart';
import 'package:flutter/material.dart';
import 'package:material_table_view/material_table_view.dart';

import '../utils/custom_app_theme.dart';

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Center(
                    child: (widget.isSales)
                        ? const SalesCards()
                        : const PurchaseCards()),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (widget.isSales) ? 'Sales table:' : 'Purchase table:',
                          style: darkTheme.textTheme.labelMedium,
                        ),
                        const Divider(),
                        (widget.isSales)
                            ? const SalesTable()
                            : const PurchaseTable(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class PurchaseCards extends StatelessWidget {
  const PurchaseCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 5,
      runSpacing: 5,
      children: [
        StatCards(title: "Today's Purchases", data: '0.00'),
        StatCards(title: "This week's Purchases", data: '0.00'),
        StatCards(title: "This month's Purchases", data: '0.00'),
        StatCards(title: "Type Purchases", data: '0.00'),
        StatCards(title: "Total of Type Asset", data: '0.00'),
        StatCards(title: "Total of Type Expenses", data: '0.00'),
      ],
    );
  }
}

class SalesCards extends StatelessWidget {
  const SalesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 5,
      runSpacing: 5,
      children: [
        StatCards(title: "Today's Sales", data: '0.00'),
        StatCards(title: "This week's Sales", data: '0.00'),
        StatCards(title: "This month's Sales", data: '0.00'),
        StatCards(title: "Type Sales", data: '0.00'),
        StatCards(title: "Total of Type Asset", data: '0.00'),
      ],
    );
  }
}

class PurchaseTable extends StatelessWidget {
  const PurchaseTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: TableView.builder(
        columns: [
          const TableColumn(
            width: 150.0,
            freezePriority: 3,
          ),
          for (var i = 1; i < 9; i++) const TableColumn(width: 120),
        ],
        rowCount: 10,
        rowHeight: 56.0,
        rowBuilder: (context, row, contentBuilder) {
          return Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () => debugPrint('Row $row clicked'),
              child: contentBuilder(
                context,
                (context, column) => Text('(${row + 1},${column + 1})'),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SalesTable extends StatelessWidget {
  const SalesTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: TableView.builder(
        columns: [
          const TableColumn(
            width: 150.0,
            freezePriority: 3,
          ),
          for (var i = 1; i < 9; i++) const TableColumn(width: 120),
        ],
        rowCount: 10,
        rowHeight: 56.0,
        rowBuilder: (context, row, contentBuilder) {
          return Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () => debugPrint('Row $row clicked'),
              child: contentBuilder(
                context,
                (context, column) => Text('(${row + 1},${column + 1})'),
              ),
            ),
          );
        },
      ),
    );
  }
}

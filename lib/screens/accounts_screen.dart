import 'package:flutter/material.dart';
import 'package:material_table_view/material_table_view.dart';

import '../utils/custom_app_theme.dart';
import '../utils/stat_cards.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key, this.isReceivables = true});

  final bool isReceivables;

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.isReceivables ? 'Receivables' : 'Payables'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Center(
                    child: (widget.isReceivables)
                        ? const ReceivablesCards()
                        : const PayableCards()),
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
                          (widget.isReceivables)
                              ? 'Receivables table:'
                              : 'Payables table:',
                          style: darkTheme.textTheme.labelMedium,
                        ),
                        const Divider(),
                        (widget.isReceivables)
                            ? const ReceivablesTable()
                            : const PayablesTable(),
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

class ReceivablesCards extends StatelessWidget {
  const ReceivablesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 5,
      runSpacing: 5,
      children: [
        StatCards(title: "Today's Receivables", data: '0.00'),
        StatCards(title: "This week's Receivables", data: '0.00'),
        StatCards(title: "This month's Receivables", data: '0.00'),
      ],
    );
  }
}

class PayableCards extends StatelessWidget {
  const PayableCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 5,
      runSpacing: 5,
      children: [
        StatCards(title: "Today's Payables", data: '0.00'),
        StatCards(title: "This week's Payables", data: '0.00'),
        StatCards(title: "This month's Payables", data: '0.00'),
      ],
    );
  }
}

class ReceivablesTable extends StatelessWidget {
  const ReceivablesTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: TableView.builder(
        columns: [
          const TableColumn(
            width: 200.0,
            freezePriority: 3,
          ),
          for (var i = 1; i < 3; i++) const TableColumn(width: 120),
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

class PayablesTable extends StatelessWidget {
  const PayablesTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: TableView.builder(
        columns: [
          const TableColumn(
            width: 200.0,
            freezePriority: 3,
          ),
          for (var i = 1; i < 3; i++) const TableColumn(width: 120),
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

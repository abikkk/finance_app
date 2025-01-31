import 'package:finance_app/utils/custom_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:material_table_view/material_table_view.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class TradesOverview extends StatefulWidget {
  const TradesOverview({super.key});

  @override
  State<TradesOverview> createState() => _TradesOverviewState();
}

class _TradesOverviewState extends State<TradesOverview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Purchase graph',
                        style: darkTheme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 200,
                    child: BarGraph(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Sales graph',
                        style: darkTheme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 200,
                    child: BarGraph(
                      isSales: true,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Latest Purchase',
                        style: darkTheme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 300,
                    child: TablesUI(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Latest Sale',
                        style: darkTheme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 300,
                    child: TablesUI(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}

class TablesUI extends StatefulWidget {
  const TablesUI({super.key, this.isSales = false});

  final bool isSales;

  @override
  State<TablesUI> createState() => _TablesUIState();
}

class _TablesUIState extends State<TablesUI> {
  @override
  Widget build(BuildContext context) {
    return TableView.builder(
      columns: [
        const TableColumn(
          width: 55.0,
          freezePriority: 100,
        ),
        for (var i = 1; i < 100; i++) const TableColumn(width: 50),
      ],
      rowCount: 1048576,
      rowHeight: 56.0,
      rowBuilder: (context, row, contentBuilder) {
        return Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => debugPrint('Row $row clicked'),
            child: contentBuilder(
              context,
              (context, column) => Text('$column'),
            ),
          ),
        );
      },
    );
  }
}

class BarGraph extends StatefulWidget {
  const BarGraph({super.key, this.isSales = false});

  final bool isSales;

  @override
  State<BarGraph> createState() => _BarGraphState();
}

class _BarGraphState extends State<BarGraph> {
  List<_SalesData> purchase = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  List<_SalesData> sales = [
    _SalesData('Jan', 12),
    _SalesData('Feb', 24),
    _SalesData('Mar', 63),
    _SalesData('Apr', 68),
    _SalesData('May', 34)
  ];

  @override
  Widget build(BuildContext context) {
    return SfSparkLineChart.custom(
      marker:
          const SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
      labelDisplayMode: SparkChartLabelDisplayMode.all,
      xValueMapper: (int index) =>
          ((widget.isSales) ? purchase : sales)[index].year,
      yValueMapper: (int index) =>
          ((widget.isSales) ? purchase : sales)[index].sales,
      dataCount: 5,
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

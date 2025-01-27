import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    super.key,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Colors.grey.shade200,
              elevation: 5,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 65,
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        'test@gmail.com',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Wrap(
              spacing: 5,
              runSpacing: 5,
              children: [
                DashboardStatCards(
                  title: 'Total Sales',
                  data: 'Rs 123123.45',
                ),
                DashboardStatCards(
                  title: 'Total Purchases',
                  data: 'Rs 123123.45',
                  trendingUp: false,
                ),
                DashboardStatCards(
                  title: 'Closing Amount',
                  data: 'Rs 123123.45',
                  trendingUp: false,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Wrap(
              spacing: 5,
              runSpacing: 5,
              children: [
                DashboardStatCards(
                  title: 'Total Payables',
                  data: 'Rs 123123.45',
                  trendingUp: false,
                ),
                DashboardStatCards(
                  title: 'Total Receivables',
                  data: 'Rs 123123.45',
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Wrap(
              spacing: 5,
              runSpacing: 5,
              children: [
                DashboardStatCards(
                  title: 'Banks',
                  data: 'Rs 123123.45',
                  trendingUp: false,
                ),
                DashboardStatCards(
                  title: 'Current Total',
                  data: 'Rs 123123.45',
                ),
                DashboardStatCards(
                  title: 'Overdrafts Total',
                  data: 'Rs 123123.45',
                  trendingUp: false,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardStatCards extends StatefulWidget {
  const DashboardStatCards(
      {super.key,
      required this.title,
      required this.data,
      this.trendingUp = true});

  final String title, data;
  final bool trendingUp;

  @override
  State<DashboardStatCards> createState() => _DashboardStatCardsState();
}

class _DashboardStatCardsState extends State<DashboardStatCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 65,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ),
                Icon(
                  widget.trendingUp ? Icons.trending_up : Icons.trending_down,
                  color: widget.trendingUp ? Colors.green : Colors.red,
                  size: 15,
                )
              ],
            ),
            Text(
              widget.data,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:finance_app/utils/custom_app_theme.dart';
import 'package:flutter/material.dart';

import '../../utils/stat_cards.dart';

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
              elevation: 5,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 65,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'test@gmail.com',
                        textAlign: TextAlign.center,
                        style: darkTheme.textTheme.titleMedium,
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
                StatCards(
                  title: 'Total Sales',
                  data: 'Rs 123123.45',
                ),
                StatCards(
                  title: 'Total Purchases',
                  data: 'Rs 123123.45',
                  trendingUp: false,
                ),
                StatCards(
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
                StatCards(
                  title: 'Total Payables',
                  data: 'Rs 123123.45',
                  trendingUp: false,
                ),
                StatCards(
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
                StatCards(
                  title: 'Banks',
                  data: 'Rs 123123.45',
                  trendingUp: false,
                ),
                StatCards(
                  title: 'Current Total',
                  data: 'Rs 123123.45',
                ),
                StatCards(
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

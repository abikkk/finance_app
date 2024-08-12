import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({
    super.key,
  });

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                child: Row(
                  children: [
                    Icon(Icons.currency_bitcoin_sharp),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Contact: 01-2345678'),
                          Text('Email: test@gmail.com')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      'Receivable',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue)),
                  child: const Center(
                      child: Text(
                    'Payable',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(border: Border.all()),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      'Total\nNRs. 999',
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black54,
                  ),
                  Center(
                      child: Text(
                    '< 90 Days\nNRs. 999',
                  )),
                  VerticalDivider(
                    color: Colors.black54,
                  ),
                  Center(
                      child: Text(
                    '> 90 Days\nNRs. 999',
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Sales and Purchase graph',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 200,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}

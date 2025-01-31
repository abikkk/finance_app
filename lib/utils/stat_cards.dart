import 'package:flutter/material.dart';

import 'custom_app_theme.dart';

class StatCards extends StatefulWidget {
  const StatCards(
      {super.key,
      required this.title,
      required this.data,
      this.trendingUp = true});

  final String title, data;
  final bool trendingUp;

  @override
  State<StatCards> createState() => _StatCardsState();
}

class _StatCardsState extends State<StatCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 70,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.start,
                    style: darkTheme.textTheme.headlineMedium,
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
              style: darkTheme.textTheme.labelMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

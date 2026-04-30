import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class summeryCard extends StatelessWidget {
  const summeryCard({
    super.key, required this.title, required this.count,
  });

  @override
  final String title;
  final String count;
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text('$count', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text('$title')

          ],
        ),
      ),
    );
  }
}
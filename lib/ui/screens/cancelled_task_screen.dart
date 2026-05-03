import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/task_card.dart';

class cancelledTaskScreen extends StatefulWidget {
  const cancelledTaskScreen({super.key});

  @override
  State<cancelledTaskScreen> createState() => _cancelledTaskScreenState();
}

class _cancelledTaskScreenState extends State<cancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
                itemCount: 6,
                primary: false,
                shrinkWrap: true,

                itemBuilder: (context, index) {
                  return taskCard(backgroundColor: Colors.red,);
                },
                separatorBuilder: (context, index) => SizedBox(height: 16,))

          ],
        ),
      ),
    );
  }
}

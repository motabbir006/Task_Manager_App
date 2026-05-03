import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/task_card.dart';

class completeTaskScreen extends StatefulWidget {
  const completeTaskScreen({super.key});

  @override
  State<completeTaskScreen> createState() => _completeTaskScreenState();
}

class _completeTaskScreenState extends State<completeTaskScreen> {
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
                  return taskCard(backgroundColor: Colors.green,);
                },
                separatorBuilder: (context, index) => SizedBox(height: 16,))

          ],
        ),
      ),
    );
  }
}

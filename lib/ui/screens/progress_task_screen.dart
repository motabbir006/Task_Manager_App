import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/task_card.dart';

class progressTaskScreen extends StatefulWidget {
  const progressTaskScreen({super.key});

  @override
  State<progressTaskScreen> createState() => _progressTaskScreenState();
}

class _progressTaskScreenState extends State<progressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemCount: 6,
          primary: false,
          shrinkWrap: true,

          itemBuilder: (context,index){
            return taskCard(backgroundColor: Colors.pinkAccent,);
          },
          separatorBuilder: (context,index) => SizedBox(height: 16,)),
    );
  }

}



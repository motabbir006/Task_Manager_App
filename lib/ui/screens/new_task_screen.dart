import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/summery_card.dart';
import '../widgets/task_card.dart';

class newTaskScreen extends StatefulWidget {
  const newTaskScreen({super.key});

  @override
  State<newTaskScreen> createState() => _newTaskScreenState();
}

class _newTaskScreenState extends State<newTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSummerySection(),
            ListView.separated(
                itemCount: 6,
                primary: false,
                shrinkWrap: true,
        
                itemBuilder: (context,index){
              return taskCard(backgroundColor: Colors.blue,);
            },
                separatorBuilder: (context,index) => SizedBox(height: 16,))
        
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddTaskButton,
        child: (Icon(Icons.add)),
      ),
    );
  }

  void _onTapAddTaskButton() {
    Navigator.pushNamed(context, '/add_New_Task');

  }

  Widget _buildSummerySection() {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              summeryCard(title: 'new', count: '12'),
              summeryCard(title: 'Progress', count: '10'),
              summeryCard(title: 'Completed', count: '110'),
              summeryCard(title: 'Cancelled', count: '9'),
            ],
          ),
        );
  }
}



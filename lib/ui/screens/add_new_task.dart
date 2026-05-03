import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_with_sourov/ui/widgets/tm_appbar.dart';

import '../widgets/screen_background.dart';

class addNewTask extends StatefulWidget {
  const addNewTask({super.key});


  @override
  State<addNewTask> createState() => _addNewTaskState();
}

class _addNewTaskState extends State<addNewTask> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
appBar: TmAppbar(),
      body: screenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add New Task',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration:InputDecoration(
                    hintText: 'Title'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  maxLines: 6,
                  decoration:InputDecoration(
                      hintText: 'Description',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16)
                  ),


                ),
                ElevatedButton(onPressed: _onTapSubmitButton, child: Icon(Icons.arrow_circle_right))
              ],
            ),
          ),
        ),
      )
    );
  }
  void _onTapSubmitButton() {
    //Navigator.pushNamedAndRemoveUntil(context, '/main_bottom_nav', (route) => false);
  //Add destination
  }
}



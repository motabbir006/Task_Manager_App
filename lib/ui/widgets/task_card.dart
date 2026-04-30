import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class taskCard extends StatelessWidget {
  final Color backgroundColor;
  const taskCard({
    super.key, required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 0,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 6),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text('Title will be here', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
            ),),
            Text('Description will be here'),
            Text('Date: 12/23/25'),
            Row(
              children: [
                Chip(label: Text('NEW',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 10),),
                  backgroundColor: backgroundColor,
                  padding: EdgeInsets.symmetric(horizontal: 16),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
              ],
            )

          ],
        ),
      ),
    );
  }
}
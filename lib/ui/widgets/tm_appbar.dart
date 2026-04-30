import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TmAppbar extends StatelessWidget implements PreferredSizeWidget{
  const TmAppbar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    TextTheme textTheme =Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        children: [
          CircleAvatar(
            radius: 18,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Motabbir Hossain Sourov',style: textTheme.bodyLarge?.copyWith(
                    color: Colors.white
                )),
                Text('sourov00p@gmail.com',style: textTheme.bodySmall?.copyWith(color: Colors.white),),
              ],
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.logout))
        ],
      ),     );
  }


  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
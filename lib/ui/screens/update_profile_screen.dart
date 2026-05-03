import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_with_sourov/ui/widgets/screen_background.dart';
import 'package:task_management_with_sourov/ui/widgets/tm_appbar.dart';

class updateProfileScreen extends StatefulWidget {
  const updateProfileScreen({super.key});

  @override
  State<updateProfileScreen> createState() => _updateProfileScreenState();
}

class _updateProfileScreenState extends State<updateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: TmAppbar(
  fromProfileScreen: true,
),
      body: screenBackground(child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Update Profile',
              style: Theme.of(context).textTheme.titleLarge,
            ),
           const SizedBox(height:  20,),
           _buildPhotoPicker(),
            const SizedBox(height:  20,),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(height:  20,),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'First Name',
              ),
            ),
            const SizedBox(height:  20,),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Last name',
              ),
            ),
            const SizedBox(height:  20,),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Phone Number',
              ),
            ),
            const SizedBox(height:  20,),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(height:  20,),
            ElevatedButton(onPressed: (){}, child: Icon(Icons.login))
          ],
        ),
      )),
    );
  }

  Widget  _buildPhotoPicker() {
    return GestureDetector(
      onTap: _onTapPhotoPicker,
      child: Container(
             height: 50,
             decoration: BoxDecoration(
                 color: Colors.white,
               borderRadius: BorderRadius.circular(10)
             ),
             child: Row(
               children: [
                 Container(
                   height: 50,
                   width: 70,
                   decoration: BoxDecoration(
                     color: Colors.grey,
                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(10),
                       topLeft: Radius.circular(10),
                     ),
                   ),
                   alignment: Alignment.center,
                   child: Text('Photos'),
                 ),
                 const SizedBox( width: 20,),
                 Text('select your photo')
               ],
             ),
           ),
    );
  }

  void _onTapPhotoPicker(){

  }
}

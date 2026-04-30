import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_with_sourov/ui/screens/progress_task_screen.dart';

import '../widgets/tm_appbar.dart';
import 'new_task_screen.dart';

class mainBottomNavScreen extends StatefulWidget {
  const mainBottomNavScreen({super.key});

  @override
  State<mainBottomNavScreen> createState() => _mainBottomNavScreenState();
}

class _mainBottomNavScreenState extends State<mainBottomNavScreen> {
  int _selectedIndex = 0;

  List<Widget> _screens =[
    newTaskScreen(),
    progressTaskScreen(),
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.new_label_rounded),
            label: 'New',
          ),
          NavigationDestination(
            icon: Icon(Icons.blur_circular),
            label: 'Progress',
          ),
          NavigationDestination(
            icon: Icon(Icons.check_circle),
            label: 'Completed',
          ),
          NavigationDestination(
            icon: Icon(Icons.cancel_outlined),
            label: 'Cancelled',
          ),
        ],
      ),
    );
  }
}

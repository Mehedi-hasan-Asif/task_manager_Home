import 'package:flutter/material.dart';
import 'package:task_manager/screens/taskscreen/cancel_screen.dart';
import 'package:task_manager/screens/taskscreen/compelete_screen.dart';
import 'package:task_manager/screens/taskscreen/inprogress_screen.dart';
import 'package:task_manager/screens/taskscreen/new_task_screen.dart';
import 'package:task_manager/utility/app_colors.dart';
import 'package:task_manager/widgets/profile_appbar.dart';


class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
   int _selectedIndex = 0;
   final List<Widget>_screens=const[

     NewTaskScreen(),
     CompletedScreen(),
     InProgressScreen(),
     CancelledScreen(),
   ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: profileAppbar(context),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          _selectedIndex =index;
          if(mounted) {
            setState(() {

            });
          }
        },
        selectedItemColor: AppColors.themeColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.abc),label: 'New Task'),
          BottomNavigationBarItem(icon: Icon(Icons.done),label: 'Completed'),
          BottomNavigationBarItem(icon: Icon(Icons.pending),label: 'In Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.close),label: 'Cancelled'),

        ],
      ),
    );
  }




}

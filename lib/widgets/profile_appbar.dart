import 'package:flutter/material.dart';
import 'package:task_manager/screens/taskscreen/update_profile_screen.dart';
import 'package:task_manager/utility/app_colors.dart';
import 'package:task_manager/widgets/network_cached_image.dart';

AppBar profileAppbar(context, [bool updateProfile = false]) {
  return AppBar(
      backgroundColor: AppColors.themeColor,
      leading: GestureDetector(
        onTap: () {
          if (updateProfile) {
            return;
          }
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UpdateProfileScreen(),
            ),
          );
        },
        child:const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: NetworkCachedImage(url: ''),
          ),
        ),
      ),
      title: GestureDetector(
        onTap: () {
          if (updateProfile) {
            return;
          }
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UpdateProfileScreen(),
            ),
          );
        },
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' Mehedi Hasan',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Text(
              'mehedihasanprog@gmail.com',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )
          ],
        ),
      ),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))]);
}

import 'package:flutter/material.dart';
import 'package:task_manager/utility/app_colors.dart';

class TaskSummary extends StatelessWidget {
  const TaskSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        title: const Text('Title will be here'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Description will be here'),
            const Text(
              'Date: 12/12/24',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: const Text('New'),
                  
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),),

                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 2),
                ),
                ButtonBar(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon:const  Icon(Icons.delete,color: Colors.red,),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon:const  Icon(Icons.edit,color: AppColors.themeColor,),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
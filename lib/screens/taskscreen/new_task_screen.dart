import 'package:flutter/material.dart';
import 'package:task_manager/screens/taskscreen/add_new_task_screen.dart';
import 'package:task_manager/utility/app_colors.dart';

import 'package:task_manager/widgets/task_summary_section.dart';
import 'package:task_manager/widgets/tasksummary.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Column(
          children: [
            _buildSummarySection(),
            const SizedBox(height: 8),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const TaskSummary();
                    }))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddButton,
        backgroundColor: AppColors.themeColor,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _onTapAddButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddNewTaskScreen(),
      ),
    );
  }

  Widget _buildSummarySection() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TaskSummaryCard(
            tittle: 'New Task',
            count: '34',
          ),
          TaskSummaryCard(
            tittle: 'Completed',
            count: '34',
          ),
          TaskSummaryCard(
            tittle: 'In Progress',
            count: '34',
          ),
          TaskSummaryCard(
            tittle: 'Cancelled',
            count: '34',
          ),
        ],
      ),
    );
  }
}

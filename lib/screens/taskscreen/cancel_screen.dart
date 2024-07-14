
import 'package:flutter/material.dart';

import 'package:task_manager/widgets/tasksummary.dart';

class CancelledScreen extends StatefulWidget {
  const CancelledScreen({super.key});

  @override
  State<CancelledScreen> createState() => _CancelledScreenState();
}

class _CancelledScreenState extends State<CancelledScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const TaskSummary();
        },),
    );
  }
}

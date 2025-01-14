
import 'package:flutter/material.dart';

import 'package:task_manager/widgets/tasksummary.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
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

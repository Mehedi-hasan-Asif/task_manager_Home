import 'package:flutter/material.dart';
import 'package:task_manager/widgets/background_widget.dart';
import 'package:task_manager/widgets/profile_appbar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  final TextEditingController _tittleTecController=TextEditingController();
  final TextEditingController _descriptionTecController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppbar(context),
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _tittleTecController,
                  decoration: const InputDecoration(hintText: 'Title'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _descriptionTecController,
                  decoration: const InputDecoration(hintText: 'Description'),
                  maxLines: 5,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _descriptionTecController.dispose();
    _tittleTecController.dispose();
    super.dispose();
  }
}

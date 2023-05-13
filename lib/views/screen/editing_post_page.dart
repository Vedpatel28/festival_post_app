import 'package:festival_post_app/utils/back_button.dart';
import 'package:flutter/material.dart';

class editingpostpage extends StatefulWidget {
  const editingpostpage({Key? key}) : super(key: key);

  @override
  State<editingpostpage> createState() => _editingpostpageState();
}

class _editingpostpageState extends State<editingpostpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const back_button(),
        title: const Text("Edit"),
      ),
    );
  }
}

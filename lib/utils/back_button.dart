import 'package:flutter/material.dart';

class back_button extends StatelessWidget {
  const back_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
      color: Colors.black87,iconSize: 25,
    );
  }
}

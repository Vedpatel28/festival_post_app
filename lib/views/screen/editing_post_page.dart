import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stickereditor/stickereditor.dart';

class editingpostpage extends StatefulWidget {
  const editingpostpage({Key? key}) : super(key: key);

  @override
  State<editingpostpage> createState() => _editingpostpageState();
}

class _editingpostpageState extends State<editingpostpage> {
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.add,
          color: Colors.transparent,
        ),
        flexibleSpace: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: s.height * 0.02),
                  const Icon(Icons.arrow_back_rounded, size: 25),
                  const Text("Back"),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: s.height * 0.02),
                const Icon(Icons.add, size: 25),
                const Text("ADD"),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: s.height * 0.02),
                const Icon(Icons.text_fields, size: 25),
                const Text("Text"),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: s.height * 0.02),
                const Icon(Icons.share, size: 25),
                const Text("Share"),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: s.height * 0.02),
                const Icon(Icons.download_outlined, size: 25),
                const Text("Download"),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: Stack(
            children: [
              TextEditingBox(
                fonts: [],
                boundHeight: 200,
                boundWidth: 100,
                isSelected: true,
                palletColor: [],
                newText: TextModel(
                  name: 'Text EditingBox',
                  textStyle: GoogleFonts.pacifico(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  top: 5,
                  isSelected: true,
                  textAlign: TextAlign.center,
                  scale: 1,
                  left: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

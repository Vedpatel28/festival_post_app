import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stickereditor/stickereditor.dart';

import '../../utils/image_utils.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: s.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent.shade100,
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // StickerEditingView(
                    //   isnetwork: false,
                    //   height: 300,
                    //   width: 300,
                    //   imgUrl: festivalimage[index],
                    //   fonts: const ["Ved"],
                    //   palletColor: [],
                    //   assetList: const [],
                    // ),
                    SingleChildScrollView(
                      child: StickerEditingBox(
                        boundHeight: 1,
                        boundWidth: 1,
                        pictureModel: PictureModel(
                          isNetwork: true,
                          isSelected: false,
                          left: 0,
                          top: 0,
                          scale: 8,
                          stringUrl: festivalimage[index],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: TextEditingBox(
                        fonts: const [
                          "Normal",
                        ],
                        boundHeight: 500,
                        boundWidth: 200,
                        isSelected: true,
                        palletColor: const [],
                        // newText: TextModel(
                        //   name: 'Enter',
                        //   textStyle: GoogleFonts.goudyBookletter1911(
                        //     textStyle: const TextStyle(
                        //       color: Colors.limeAccent,
                        //     ),
                        //   ),
                        //   top: 10,
                        //   isSelected: true,
                        //   textAlign: TextAlign.center,
                        //   scale: 0,
                        //   left: 0,
                        // ),
                        newText: TextModel(
                          name: '_',
                          textStyle: GoogleFonts.candal(
                              fontSize: 25, color: Colors.lime),
                          top: 100,
                          isSelected: true,
                          textAlign: TextAlign.center,
                          scale: 1,
                          left: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

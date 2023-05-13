import 'package:festival_post_app/utils/back_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class festivalselectpage extends StatefulWidget {
  const festivalselectpage({Key? key}) : super(key: key);

  @override
  State<festivalselectpage> createState() => _festivalselectpageState();
}

class _festivalselectpageState extends State<festivalselectpage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        leading: Column(
          children: const [
            back_button(),
            Spacer(),
          ],
        ),
        flexibleSpace: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "\nFestival\n",
                style: GoogleFonts.xanhMono(
                  textStyle: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Text(
                " Studio\n",
                style: GoogleFonts.lobster(
                  textStyle: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 3,
                  ),
                ),
              ),
              // Text.rich(
              //   TextSpan(
              //     children: [
              //       TextSpan(
              //         text: "\nFestival\n",
              //         style: GoogleFonts.xanhMono(
              //           textStyle: const TextStyle(
              //             color: Colors.red,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 20,
              //             letterSpacing: 2,
              //           ),
              //         ),
              //       ),
              //       TextSpan(
              //         text: " Studio\n",
              //         style: GoogleFonts.lobster(
              //           textStyle: const TextStyle(
              //             color: Colors.red,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 20,
              //             letterSpacing: 3,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

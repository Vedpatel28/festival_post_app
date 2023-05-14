import 'dart:ui';
import 'package:festival_post_app/utils/back_button.dart';
import 'package:festival_post_app/utils/image_utils.dart';
import 'package:festival_post_app/utils/utils_routes_page.dart';
import 'package:festival_post_app/views/screen/editing_post_page.dart';
import 'package:flutter/foundation.dart';
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
        backgroundColor: Colors.transparent,
        // Back Button
        leading: Column(
          children: const [
            back_button(),
          ],
        ),
        // Festival Studio  Text
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          // Festival Studio  Text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: s.height * 0.02),
              // Festival Text
              Text(
                "Festival",
                style: GoogleFonts.bevan(
                  textStyle: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    letterSpacing: 3,
                  ),
                ),
              ),
              // Studio Text
              Text(
                "Studio",
                style: GoogleFonts.lobster(
                  textStyle: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/image/AddFestivalBGPageImage.jpg",
              fit: BoxFit.cover,
            ),
          ),
          // Blur Image
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 5,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: s.height * 0.675,
                      width: double.infinity,
                      // color: Colors.white30,
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: s.height * 0.09),
                                // Most famous Festival
                                Text(
                                  "Most famous Festival",
                                  style: GoogleFonts.imFellGreatPrimer(
                                    textStyle: TextStyle(
                                      fontSize: s.height * 0.025,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: s.height * 0.02),
                                // First Benar Image
                                Container(
                                  height: s.height * 0.25,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.amberAccent,
                                  ),
                                  // First Benar Image
                                  child: Image.network(
                                    "https://holidays-today.com/holidays/wp-content/uploads/2018/06/13-3.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: s.height * 0.03),
                                // Most famous Poster Making Company
                                Text(
                                  "Most famous Poster Making Company",
                                  style: GoogleFonts.imFellGreatPrimer(
                                    textStyle: TextStyle(
                                      fontSize: s.height * 0.02,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: s.height * 0.03),
                                // Most famous Poster Making Company Circle Avtar...
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  // Most famous Poster Making Company Circle Avtar...
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // 1
                                      const CircleAvatar(
                                        backgroundColor: Colors.amberAccent,
                                        radius: 40,
                                        foregroundImage: NetworkImage(
                                          "https://img.freepik.com/free-vector/creative-colorful-design-logo_23-2148568452.jpg?w=740&t=st=1683973422~exp=1683974022~hmac=a199e13e37ddc5a8aba7c242511ec7f70e1fc74de93974786bad18472e555ab1",
                                        ),
                                      ),
                                      SizedBox(width: s.width * 0.04),
                                      // 2
                                      const CircleAvatar(
                                        backgroundColor: Colors.amberAccent,
                                        radius: 40,
                                        foregroundImage: NetworkImage(
                                          "https://img.freepik.com/free-vector/stationery-store-logo-template_23-2149852423.jpg?w=740&t=st=1683973766~exp=1683974366~hmac=e6d80f087ff0ebca4e7da625c3a4c31860e886c6aa445d3231ea6debca90a7f7",
                                        ),
                                      ),
                                      SizedBox(width: s.width * 0.04),
                                      // 3
                                      const CircleAvatar(
                                        backgroundColor: Colors.amberAccent,
                                        radius: 40,
                                        foregroundImage: NetworkImage(
                                          "https://img.freepik.com/free-vector/quill-pen-logo-design-template_23-2149820295.jpg?w=740&t=st=1683973857~exp=1683974457~hmac=d38b5ae0c4992c0ae8849093a4b8c6c2e17284a63806190111f985fc826c606d",
                                        ),
                                      ),
                                      SizedBox(width: s.width * 0.04),
                                      // 4
                                      const CircleAvatar(
                                        backgroundColor: Colors.amberAccent,
                                        radius: 40,
                                        foregroundImage: NetworkImage(
                                          "https://img.freepik.com/free-vector/drawing-material-illustration_24908-57935.jpg?w=740&t=st=1683973876~exp=1683974476~hmac=2d209ef6d655999d3d8ba6309cd0d23dbb3c97bf2ee516e54ccce378b0480d2d",
                                        ),
                                      ),
                                      SizedBox(width: s.width * 0.04),
                                      // 5
                                      const CircleAvatar(
                                        backgroundColor: Colors.amberAccent,
                                        radius: 40,
                                        foregroundImage: NetworkImage(
                                          "https://img.freepik.com/free-vector/stationery-store-logo-template_23-2149852417.jpg?w=740&t=st=1683973905~exp=1683974505~hmac=162c90abd26b9dc9bd448cf9f67b49a92b428241f42a4db30b022c3e65867968",
                                        ),
                                      ),
                                      SizedBox(width: s.width * 0.04),
                                      // 6
                                      const CircleAvatar(
                                        backgroundColor: Colors.amberAccent,
                                        radius: 40,
                                        foregroundImage: NetworkImage(
                                          "https://img.freepik.com/free-vector/printing-house-logo-template-design_23-2149881277.jpg?w=740&t=st=1683973938~exp=1683974538~hmac=9bd4851a7a4c0aa483a8a28ab3f23c7264599812beb6190f81647a895312a265",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: s.height * 0.03),
                                Text(
                                  "Selecr Festival",
                                  style: GoogleFonts.imFellGreatPrimer(
                                    textStyle: TextStyle(
                                      fontSize: s.height * 0.025,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: s.height * 0.3,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 210,
                          childAspectRatio: 3 / 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          crossAxisCount: 1,
                        ),
                        itemCount: festivalimage.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                width: 250,
                                height: 220,
                                color: Colors.transparent,
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        allroutes.editingpostpage,
                                        arguments: index);
                                  },
                                  child: Image(
                                    image: NetworkImage(
                                      festivalimage[index],
                                    ),
                                  ),
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
            ),
          ),
        ],
      ),
      // Stack(
      //   children: [
      //     Container(
      //       height: double.infinity,
      //       width: double.infinity,
      //       child: Image.asset(
      //         "assets/image/AddFestivalBGPageImage.jpg",
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     // Blur Image
      //     BackdropFilter(
      //       filter: ImageFilter.blur(
      //         sigmaX: 2,
      //         sigmaY: 5,
      //       ),
      //       child: Stack(
      //         children: [
      //           SizedBox(
      //             height: double.infinity,
      //             width: double.infinity,
      //             child: Image.asset(
      //               "assets/image/AddFestivalBGPageImage.jpg",
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           // Blur Image
      //           BackdropFilter(
      //             filter: ImageFilter.blur(
      //               sigmaX: 2,
      //               sigmaY: 5,
      //             ),
      //             child: const SizedBox(),
      //           ),
      //           Expanded(
      //             flex: 2,
      //             child: Container(
      //               child: Stack(
      //                 alignment: Alignment.center,
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.all(14),
      //                     child: SingleChildScrollView(
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           SizedBox(height: s.height * 0.05),
      //                           // Most famous Festival
      //                           Text(
      //                             "Most famous Festival",
      //                             style: GoogleFonts.imFellGreatPrimer(
      //                               textStyle: TextStyle(
      //                                 fontSize: s.height * 0.025,
      //                                 color: Colors.white70,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                           SizedBox(height: s.height * 0.02),
      //                           // First Benar Image
      //                           Container(
      //                             height: s.height * 0.25,
      //                             width: double.infinity,
      //                             decoration: const BoxDecoration(
      //                               color: Colors.amberAccent,
      //                             ),
      //                             // First Benar Image
      //                             child: Image.network(
      //                               "https://holidays-today.com/holidays/wp-content/uploads/2018/06/13-3.jpg",
      //                               fit: BoxFit.cover,
      //                             ),
      //                           ),
      //                           SizedBox(height: s.height * 0.03),
      //                           // Most famous Poster Making Company
      //                           Text(
      //                             "Most famous Poster Making Company",
      //                             style: GoogleFonts.imFellGreatPrimer(
      //                               textStyle: TextStyle(
      //                                 fontSize: s.height * 0.02,
      //                                 color: Colors.white70,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                           SizedBox(height: s.height * 0.03),
      //                           // Most famous Poster Making Company Circle Avtar...
      //                           SingleChildScrollView(
      //                             scrollDirection: Axis.horizontal,
      //                             // Most famous Poster Making Company Circle Avtar...
      //                             child: Row(
      //                               crossAxisAlignment:
      //                                   CrossAxisAlignment.center,
      //                               children: [
      //                                 // 1
      //                                 const CircleAvatar(
      //                                   backgroundColor: Colors.amberAccent,
      //                                   radius: 40,
      //                                   foregroundImage: NetworkImage(
      //                                     "https://img.freepik.com/free-vector/creative-colorful-design-logo_23-2148568452.jpg?w=740&t=st=1683973422~exp=1683974022~hmac=a199e13e37ddc5a8aba7c242511ec7f70e1fc74de93974786bad18472e555ab1",
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: s.width * 0.04),
      //                                 // 2
      //                                 const CircleAvatar(
      //                                   backgroundColor: Colors.amberAccent,
      //                                   radius: 40,
      //                                   foregroundImage: NetworkImage(
      //                                     "https://img.freepik.com/free-vector/stationery-store-logo-template_23-2149852423.jpg?w=740&t=st=1683973766~exp=1683974366~hmac=e6d80f087ff0ebca4e7da625c3a4c31860e886c6aa445d3231ea6debca90a7f7",
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: s.width * 0.04),
      //                                 // 3
      //                                 const CircleAvatar(
      //                                   backgroundColor: Colors.amberAccent,
      //                                   radius: 40,
      //                                   foregroundImage: NetworkImage(
      //                                     "https://img.freepik.com/free-vector/quill-pen-logo-design-template_23-2149820295.jpg?w=740&t=st=1683973857~exp=1683974457~hmac=d38b5ae0c4992c0ae8849093a4b8c6c2e17284a63806190111f985fc826c606d",
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: s.width * 0.04),
      //                                 // 4
      //                                 const CircleAvatar(
      //                                   backgroundColor: Colors.amberAccent,
      //                                   radius: 40,
      //                                   foregroundImage: NetworkImage(
      //                                     "https://img.freepik.com/free-vector/drawing-material-illustration_24908-57935.jpg?w=740&t=st=1683973876~exp=1683974476~hmac=2d209ef6d655999d3d8ba6309cd0d23dbb3c97bf2ee516e54ccce378b0480d2d",
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: s.width * 0.04),
      //                                 // 5
      //                                 const CircleAvatar(
      //                                   backgroundColor: Colors.amberAccent,
      //                                   radius: 40,
      //                                   foregroundImage: NetworkImage(
      //                                     "https://img.freepik.com/free-vector/stationery-store-logo-template_23-2149852417.jpg?w=740&t=st=1683973905~exp=1683974505~hmac=162c90abd26b9dc9bd448cf9f67b49a92b428241f42a4db30b022c3e65867968",
      //                                   ),
      //                                 ),
      //                                 SizedBox(width: s.width * 0.04),
      //                                 // 6
      //                                 const CircleAvatar(
      //                                   backgroundColor: Colors.amberAccent,
      //                                   radius: 40,
      //                                   foregroundImage: NetworkImage(
      //                                     "https://img.freepik.com/free-vector/printing-house-logo-template-design_23-2149881277.jpg?w=740&t=st=1683973938~exp=1683974538~hmac=9bd4851a7a4c0aa483a8a28ab3f23c7264599812beb6190f81647a895312a265",
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                           SizedBox(height: s.height * 0.03),
      //                           Text(
      //                             "Selecr Festival",
      //                             style: GoogleFonts.imFellGreatPrimer(
      //                               textStyle: TextStyle(
      //                                 fontSize: s.height * 0.025,
      //                                 color: Colors.white70,
      //                                 fontWeight: FontWeight.bold,
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //           SizedBox(height: s.height * 0.2),
      //           Expanded(
      //             flex: 2,
      //             child: Padding(
      //               padding: const EdgeInsets.all(0.2),
      //               child: Container(
      //                 margin: EdgeInsets.all(20),
      //                 child: GridView.builder(
      //                   gridDelegate:
      //                       const SliverGridDelegateWithFixedCrossAxisCount(
      //                     crossAxisSpacing: 1,
      //                     mainAxisSpacing: 2,
      //                     childAspectRatio: 1 / 2,
      //                     crossAxisCount: 2,
      //                   ),
      //                   itemCount: 20,
      //                   itemBuilder: (context, index) => Column(
      //                     children: [
      //                       Container(
      //                         width: 233,
      //                         height: 20,
      //                         color: Colors.black87,
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

/*
*
*     Stack ma Colam le va ni & te ma Bane Expandent moki de va na........
*
*
* */

import 'dart:ui';
import 'package:festival_post_app/utils/utils_routes_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // BackGroundImage
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/image/BGIMAGE.jpg",
              fit: BoxFit.cover,
            ),
          ),
          // Blur Image
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 5,
            ),
            child: const SizedBox(),
          ),
          Column(
            children: [
              SizedBox(height: s.height * 0.02),
              // Festival Editing App Text
              Text(
                "Festival Editing App",
                style: GoogleFonts.lacquer(
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize: s.height * 0.04,
                  ),
                ),
              ),
              SizedBox(height: s.height * 0.25),
              // Festival Post Edit
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(allroutes.festivalselectpage);
                },
                child: Container(
                  height: s.height * 0.085,
                  width: s.width * 0.6,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.amber.shade600,
                        Colors.amberAccent,
                        Colors.amber.shade50,
                      ],
                    ),
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.elliptical(30, 40),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Festival Post",
                          style: GoogleFonts.grenze(
                            textStyle: TextStyle(
                              color: Colors.red.shade700,
                              fontSize: s.height * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.image_outlined,
                          color: Colors.red.shade700,
                          size: s.height * 0.04,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: s.height * 0.08),
              // Create new Button
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(allroutes.festivalselectpage);
                },
                child: Container(
                  height: s.height * 0.085,
                  width: s.width * 0.6,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.amber.shade600,
                        Colors.amberAccent,
                        Colors.amber.shade50,
                      ],
                    ),
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.elliptical(30, 40),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Create new Text
                        Text(
                          "Create New",
                          style: GoogleFonts.grenze(
                            textStyle: TextStyle(
                              color: Colors.red.shade700,
                              fontSize: s.height * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.red.shade700,
                          size: s.height * 0.04,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: s.height * 0.08),
              // Menu Button
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: s.height * 0.085,
                  width: s.width * 0.6,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.amber.shade600,
                        Colors.amberAccent,
                        Colors.amber.shade50,
                      ],
                    ),
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.elliptical(30, 40),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Saved Image",
                          style: GoogleFonts.grenze(
                            textStyle: TextStyle(
                              color: Colors.red.shade700,
                              fontSize: s.height * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.download_outlined,
                          color: Colors.red.shade700,
                          size: s.height * 0.04,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.of(context).pop();
          });
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Colors.amber.shade600,
                Colors.amberAccent,
                Colors.amber.shade50,
              ],
            ),
          ),
          child: Icon(
            Icons.exit_to_app,
            color: Colors.red.shade700,
          ),
        ),
      ),
    );
  }
}

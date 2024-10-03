import 'dart:ffi';
import 'dart:ui_web';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Coeurdes Aples.png"),
                          fit: BoxFit.cover,
                        )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                              child: const Icon(Icons.arrow_back,
                              color: Color(0xffb8b8b8b8), size: 20),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                           boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    spreadRadius: 4,
                                  )
                                ],
                        ),
                        child: const Icon(Icons.favorite,
                        size: 30,
                        color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Text("Coeurdes Aples",
                   style: GoogleFonts.getFont("Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: const Color(0xff23232323)),),
                  Text("Show Map",
                   style: GoogleFonts.getFont("Roboto Condensed",
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: const Color(0xFF176FF2)),),
                  ],
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.star,
                    color: Colors.amber,),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("4.5 (345 Reviews)",
                   style: GoogleFonts.getFont("Roboto Condensed",
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: const Color(0xFF606060)),),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                 Text("Aspen, in Colorado’s Rocky Mountains, is a ski resort town and year-round destination for outdoor recreation. \n It's also known for high-end restaurants and boutiques, and landmarks like the Wheeler Opera House, built in 1889 during the area’s silver mining boom.",
                   style: GoogleFonts.getFont("Roboto Condensed",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color(0xFF606060)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 29),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           Text("Facilities",
                   style: GoogleFonts.getFont("Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color(0xff23232323)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildCard(assetPath: "assets/svg/vector_2_x2.svg",
                      text: "1 Heater",),
                      _buildCard(assetPath: "assets/svg/vector_1_x2.svg",
                      text: "1 Dinner",),
                      _buildCard(assetPath: "assets/svg/vector_x2.svg",
                      text: "1 Tub",),
                      _buildCard(assetPath: "assets/svg/vector_3_x2.svg",
                      text: "Pool",)
                    ],
                  )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: 
                      Text("Price",
                   style: GoogleFonts.getFont("Roboto Condensed",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: const Color(0xff23232323)),
                  ), 
                    ),
                     Text("\$199",
                   style: GoogleFonts.getFont("Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: const Color(0xE2FF5252))),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 1.8,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF176FF2)
                  ),
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: GoogleFonts.getFont("Roboto Condensed",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 18),
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required String assetPath, required String text}){
    return Expanded(child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.fromLTRB(0, 14, 0, 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0x0D176FF2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 40.0),
            width: 30,
            height: 28,
            child: SvgPicture.asset(assetPath),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 1.3),
            child: Text(
              text,
                   style: GoogleFonts.getFont("Roboto Condensed",
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black26),
            ),
          ),
        ],
      ),
    ));
  }
}
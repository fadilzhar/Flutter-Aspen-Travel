import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedCard extends StatelessWidget {
  final String title;
  final String duration;
  final String deal;
  final String image;
  const RecommendedCard({
    required this.title,
    required this.duration,
    required this.deal,
    required this.image,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0x0fff4f4f)),
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFF5F5F5),
          ]
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x2B97A0B2),
            offset: Offset(0, 4),
            blurRadius: 10
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(image,
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,),
              ),
              Positioned(bottom: 0, right: 8,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF3A544F),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                child: Text(duration,
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),),
              ),
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.all(8),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: const Color(0xFF232323),
            ),
          ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
          child: Row(
            children: [
              SvgPicture.asset('assets/svg/shape_x2.svg',
              height: 12,
              width: 12,
              ),
              const SizedBox(
                width: 5.5,
              ),
                Text(
            deal,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: const Color(0xFF3A544F),
            ),
          ),
            ],
          ),
          )
        ],
      ),
    );
  }
}
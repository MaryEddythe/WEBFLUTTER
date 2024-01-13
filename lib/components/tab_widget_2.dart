import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 

class TabWidget2 extends StatelessWidget {
  const TabWidget2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xFFE6F7F4),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/cover.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Color(0xFFE6F7F4).withOpacity(0.9), 
                ],
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  "My Biography",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "       The wind blew hard from all directions. Heavy rainstorms poured everywhere. Thunder and lightning ruled the sky. It was during this tempestuous evening that my journey began when Mama experienced her first labor pain. Nearly 24 hours later, a vibrant baby girl came into the world through a cesarean section, and that baby girl is none other than me. I had my first glimpse of the world on June 26, 2002.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "       As an eldest child to a middle-aged couple, I enjoyed all the love and privileges which are given to the first child like me. My name itself is the replica of that love, because it is the combination of my parent’s names. Eduardo and Terry. They christened me Mary Eddythe, the ‘Mary’ was added as a sign of Mama’s devotion to Virgin Mary, because I was a “high risk” fetus as a consequence of the late marriage of Papa and Mama.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "       Being the firstborn to a middle-aged couple, I was fortunate to bask in all the affection and privileges which are given with the eldest child status. My name itself is a testament to the love between my parents, as it is a combination of their names, Eduardo and Terry. They named me Mary Eddythe, with 'Mary' being a reflection of Mama's devotion to the Virgin Mary, a testament to the high-risk nature of my fetal development due to the late marriage of my parents.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "       Kawasaki Syndrome, characterized by coronary artery inflammation and the possibility of hypertension-related complications even in young children, presented a unique medical challenge. Unfortunately, there was no specific treatment for this medical condition. The only solution was to strengthen my immune system, allowing my body to combat the disease. This involved administering eight vials of expensive processed white plasma.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "       Furthermore, the medical professional indicated the possibility of me developing distinct behavioral traits due to the characteristics that I transmitted from the plasma donor.",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}


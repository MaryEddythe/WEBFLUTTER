import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabWidget1 extends StatelessWidget {
  const TabWidget1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/cover.jpg'), 
              fit: BoxFit.cover, 
            ),
          ),
          child: ListView(
            children: [
              SizedBox(height: 16),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Contact Information",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              InformationSection(
                icon: Icons.email,
                description: 'Email:',
                data: 'maryeddythe.sornito@wvsu.edu.ph',
              ),
              InformationSection(
                icon: Icons.call_end_outlined,
                description: 'Contact Number:',
                data: '09293871698',
              ),
              InformationSection(
                icon: Icons.domain_rounded,
                description: 'University:',
                data: 'West Visayas State University',
              ),
              InformationSection(
                icon: Icons.home_outlined,
                description: 'Address:',
                data: 'Arroyo Street, Santa Barbara, Iloilo',
              ),
              InformationSection(
                icon: Icons.mood_bad_outlined,
                description: 'Mood:',
                data: 'Tired',
              ),
              SizedBox(height: 16),
            ],
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
                  Color(0xFF86C5B9).withOpacity(0.7), 
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class InformationSection extends StatelessWidget {
  final IconData icon;
  final String description;
  final String data;

  InformationSection({required this.icon, required this.description, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(icon),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Center(
            child: Text(
              description,
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            data,
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

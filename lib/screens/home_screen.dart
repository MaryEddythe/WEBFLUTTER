import 'package:act6/screens/about_me.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "edith.io",
          style: GoogleFonts.lora(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        backgroundColor: Color(0xFF008264),
      ),
      body: Stack( 
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container( 
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF006366).withOpacity(0.5), Color(0xFF006366).withOpacity(0.0)],
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/edith.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(
                  "Mary Eddythe Sornito BSIT-3B",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFF2E9EA),
                    ),
                  ),
                ),
                Text(
                  "Click the button to know more about me!",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFF2E9EA),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => About_Me(),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      primary: Color(0xFF001440),
                      side: BorderSide(color: Color(0xFF001440)),
                      backgroundColor: Color(0xFFE6D600),
                    ),
                    child: Text(
                      "Go to About Me",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

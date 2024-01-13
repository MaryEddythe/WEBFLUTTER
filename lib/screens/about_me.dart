import 'package:act6/components/tab_widget_1.dart';
import 'package:act6/components/tab_widget_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About_Me extends StatefulWidget {
  const About_Me({Key? key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "About Me",
            style: GoogleFonts.lora(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
          bottom: TabBar(
            tabs: [
              Tab(
                child: Center(
                  child: Icon(Icons.contact_mail),
                ),
              ),
              Tab(
                child: Center(
                  child: Icon(Icons.book),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabWidget1(),
            TabWidget2(),
          ],
        ),
      ),
    );
  }
}


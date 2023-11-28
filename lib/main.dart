import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'About Coffee',
      home: SafeArea(
          child: HomePage(),
      ),
    )
  );
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      // decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Expanded(child:
            Center(child:
              Text('About Coffee', style: GoogleFonts.lato(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            ),
          )
        ],
      )
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
        children: [
          AppBar(),
        ],
      ),
    );
  }
}
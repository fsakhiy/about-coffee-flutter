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
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
          // color: Colors.brown,
        image: DecorationImage(image: AssetImage('assets/images/beans.jpg'), fit: BoxFit.cover),
          border: Border(bottom: BorderSide(
            color: Colors.black,
            width: 3.0
        ),
      )),
      child: Row(
        children: [
          Expanded(child:
            Center(child:
              Text('About Coffee', style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white))),
            ),
          )
        ],
      )
    );
  }
}

class TypesOfCoffee extends StatelessWidget {
  const TypesOfCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: double.infinity,
      // decoration: BoxDecoration(
      //   color: Colors.grey[200],
      //   borderRadius: BorderRadius.circular(15.0),
      // ),
      child: Column(children: [
        SizedBox(
          width: double.infinity,
          child:
          Text('Types of Coffee', style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
        ),
        // const SizedBox(height: 10),
        // SizedBox(
        //   width: double.infinity,
        //   child:
        //   // Text('there are two types of coffee that are commonly found which is Arabica and Robusta coffee', style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 14))),
        //   RichText(
        //     text: TextSpan(
        //       text: 'There are two types of coffee that are commonly found which is ',
        //       style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 16)),
        //       children: const <TextSpan>[
        //         TextSpan(
        //           text: 'Arabica',
        //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        //         ),
        //         TextSpan(
        //           text: ' and ',
        //         ),
        //         TextSpan(
        //           text: 'Robusta',
        //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        //         ),
        //         TextSpan(
        //           text: ' coffee.',
        //         ),
        //       ],
        //     ),
        //   ),

        // ),
        // const SizedBox(height: 10),
      ],),
    );
  }

}

class AboutArabica extends StatelessWidget {
  const AboutArabica({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: double.infinity,
      // decoration: BoxDecoration(
        // color: Colors.grey[200],
        // borderRadius: BorderRadius.circular(15.0),
      // ),
      child: Column(children: [
        SizedBox(
          width: double.infinity,
          child: Text('Arabica', style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.bold), fontSize: 24),),
        ),
        SizedBox(
          width: double.infinity,
          child: Text("Arabica coffee, scientifically known as Coffea arabica, is renowned for its superior quality and mild flavor profile. It constitutes a significant portion of the world's coffee production and is often considered the high-quality choice among coffee enthusiasts. Arabica beans are characterized by a smoother, more nuanced taste with hints of acidity and a wide range of flavor notes, including floral, fruity, and sometimes nutty undertones. These beans generally thrive at higher elevations in cooler climates, contributing to their distinctive characteristics", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16))),
        )
      ],),
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
          TypesOfCoffee(),
          // SizedBox(height: 20),
          AboutArabica(),
        ],
      ),
    );
  }
}
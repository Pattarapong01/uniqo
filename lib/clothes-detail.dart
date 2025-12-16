import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniqo/Model/clothes.dart';
import 'package:google_fonts/google_fonts.dart';

class ClothesDetail extends StatelessWidget{
  Clothes clothes;

  ClothesDetail ({super.key, required this.clothes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('clothes Detail'),
        titleTextStyle: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
      ),
      body: Center(
        child : Column(
          children: [
             Text(
              clothes.imageLabel,
              style: GoogleFonts.lato(
              fontWeight: FontWeight.bold
              )
             ),
          Image.asset(clothes.imageUrl),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                clothes.imageDetail,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
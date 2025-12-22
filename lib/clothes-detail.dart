import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniqo/Model/%E0%B8%B7items.dart';
import 'package:uniqo/Model/clothes.dart';
import 'package:google_fonts/google_fonts.dart';

class ClothesDetail extends StatefulWidget {
  final Clothes clothes;

  const ClothesDetail({super.key, required this.clothes});

  @override
  State<ClothesDetail> createState() => ClothesDetailState();
}

class ClothesDetailState extends State<ClothesDetail> {
  int sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clothes Detail'),
        titleTextStyle: GoogleFonts.lato(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.clothes.imageLabel,
              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
            ),

            Image.asset(widget.clothes.imageUrl),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.clothes.imageDetail,
                style: GoogleFonts.lato(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              widget.clothes.priceDetail,
              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.clothes.items.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = widget.clothes.items[index];
                  final totalPrice = item.price * sliderVal;
                  final totalQuantity = sliderVal;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      ' Items = $totalQuantity Price = $totalPrice ${item.unit}',
                      style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ),
            Slider(
              max: 10,
              min: 1,
              divisions: 9,
              label: '$sliderVal',
              value: sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  sliderVal = newValue.round();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

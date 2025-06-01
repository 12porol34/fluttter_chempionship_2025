import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class KrosiScreen extends StatelessWidget {
  const KrosiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 500,
          height: 100,
          padding: EdgeInsets.only(top: 400, left: 200, bottom: 50, right: 50),
          decoration: BoxDecoration(
            color: BrandColors.block,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 12),
        ),

        Positioned(
          left: 10,
          top: 10,
          right: 10,
          child: Container(
            height: 100,
            width: 100,
            child: Image.asset(
              'assets/2c705924fd56edd26a4546a27a004864553e05d9.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}

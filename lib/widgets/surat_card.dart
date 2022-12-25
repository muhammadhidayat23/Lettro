import 'package:flutter/material.dart';
import 'package:lettro/theme.dart';

class SuratCard extends StatelessWidget {
  final int id;
  final String namaSurat;
  final String imageUrl;

  SuratCard({
    required this.id,
    required this.namaSurat,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      margin: EdgeInsets.only(
        right: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              imageUrl,
            ),
            Text(
              namaSurat,
              textAlign: TextAlign.center,
              style: secondaryTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

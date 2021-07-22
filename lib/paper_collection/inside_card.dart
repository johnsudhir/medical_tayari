import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class InsideCardWidget extends StatelessWidget {
  InsideCardWidget({required this.collectionIcon, required this.collectionName, this.textSize});
  final IconData collectionIcon;
  final String collectionName;
  final double? textSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(collectionIcon,size: 100,),
          SizedBox(height: 15.0,),
          Text('$collectionName',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: textSize ?? 30,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
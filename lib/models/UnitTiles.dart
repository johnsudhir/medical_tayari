import 'package:flutter/material.dart';
import 'package:medical_tayari/models/ReuseableCard.dart';
class UnitTiles extends StatelessWidget {
  UnitTiles({required this.tileTitles, required this.title,  required this.routeTiles});
  final List<String> tileTitles;
  final List<String> routeTiles;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tileTitles.length,
        itemBuilder: (context, index){
          return CardWidget(
            color: Color(0xFFF252B50),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFF252B50),
              ),
              height: 100,

              child: Center(child: Text('${tileTitles[index]}'),),
            ),
            onPressed: (){
              Navigator.pushNamed(context, routeTiles[index]);
            },
          );
        },
      ),
    );
  }
}

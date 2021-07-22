import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_tayari/Biology/Botany/botany_units.dart';
import 'package:medical_tayari/Biology/Zoology/zoology_units.dart';
import 'package:medical_tayari/constants.dart';
import 'package:medical_tayari/models/ReuseableCard.dart';
import 'package:medical_tayari/paper_collection/inside_card.dart';
import 'package:medical_tayari/physics/physics_units.dart';

//This is the home page for now.
class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);
  static const String collection = 'Collections';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collections'),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //each row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CardWidget(
                      color: kactiveCardColor,
                      child: Column(
                        children: [
                          InsideCardWidget(
                            collectionIcon: Icons.phone,
                            collectionName: 'Physics',
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, PhysicsUnits.physics);
                      },
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      color: kactiveCardColor,
                      child: Column(
                        children: [
                          InsideCardWidget(
                            collectionIcon: Icons.phone,
                            collectionName: 'Chemistry',
                          )
                        ],
                      ),
                      onPressed: () {
                        //TODO: Chemistry on Pressed
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CardWidget(
                      color: kactiveCardColor,
                      child: Column(
                        children: [
                          InsideCardWidget(
                            collectionIcon: Icons.phone,
                            collectionName: 'Zoology',
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, ZoologyUnits.zoologyUnits);
                      },
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      color: kactiveCardColor,
                      child: Column(
                        children: [
                          InsideCardWidget(
                            collectionIcon: Icons.phone,
                            collectionName: 'Botany',
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, BotanyUnits.botanyUnits);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CardWidget(
                      color: Color(0xFFF252B50),
                      child: Column(
                        children: [
                          InsideCardWidget(
                            collectionIcon: Icons.phone,
                            collectionName: 'MAT',
                          )
                        ],
                      ),
                      onPressed: () {
                        //TODO: MAT on Pressed
                      },
                    ),
                  ),

                ],
              ),
              Divider(
                color: Colors.red,
                height: 10,
                indent: 50,
                endIndent: 50,
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: Colors.orangeAccent,
                  // image: DecorationImage(
                  //   image: AssetImage('images/motivational.jpg'),
                  //   scale: 0.5,
                  //   fit: BoxFit.cover
                  // )
                ),

                alignment: Alignment.center,
                child: Text(
                  'Congrats!! You guys are already ahead than those 50% who even dont start.',
                  style: GoogleFonts.ubuntu(fontSize: 25),
                ),
              ),

              //old papers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CardWidget(
                      color: kactiveCardColor,
                      child: Column(
                        children: [
                          InsideCardWidget(
                            collectionIcon: Icons.phone,
                            collectionName: 'Old Papers',
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      color: kactiveCardColor,
                      child: Column(
                        children: [
                          InsideCardWidget(
                            collectionIcon: Icons.phone,
                            collectionName: 'Model Papers',
                            textSize: 25,
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

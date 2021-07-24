import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_tayari/logIn/auth.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);
  static const String logIn = "LogInPage";
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/motivational.jpg')
                )
              ),
            )),
            Expanded(
              child: Text(
                  'Prepare well for Exam\nYou are already ahead than those 50 percent who even don\'t start',
                style: GoogleFonts.federo(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),

              child: ElevatedButton(onPressed: (){
                signInWithGoogle(context);
              },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple[700]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.red)
                      ),
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.only(
                    top: 15,
                    bottom: 15
                  ))
                ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue with Google',
                        style: GoogleFonts.lato(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 20)),
                      Image.asset(
                        'images/google.png',
                        height: 26,
                      )
                    ],
                  ),
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
enum Subjects {
  Physics,
  Chemistry,
  Zoology,
  Botany,
  MAT,

}
Subjects? selectedSubject;
class CardWidget extends StatelessWidget {
  CardWidget({required this.color, this.child, this.onPressed});
  final Color color;
  final Widget? child;
  final Function? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPressed!();
      },
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}


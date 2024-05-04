import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


// use stl to auto-generate
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return appBar();
  }

  Scaffold appBar() {
    return Scaffold(

    appBar: AppBar(

      title: Text('Breakfast',

        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),

      ),

      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,

      leading: GestureDetector (
        onTap: () {

        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),

          child: SvgPicture.asset(
            'assets/icons/Arrow - Left 2.svg',
            width: 20,
            height: 20,
            ),

          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)
          ),

        ),
      ),

      actions: [
        GestureDetector(
          onTap: () {

          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            width: 37,

            child: SvgPicture.asset(
              'assets/icons/dots.svg',
              width: 5,
              height: 5,
              ),

            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)
            ),

          ),
        )
      ]

    ),
  );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


// use stl to auto-generate
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          searchField(),
          
        ],
      ),
    );
  }

  Container searchField() {
    return 
        Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Pancake',
              hintStyle: TextStyle(
                color: Color(0xffDDDADA),
                fontSize: 14,
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),

              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset('assets/icons/Search.svg'),
              ),
              
              suffixIcon: Container(
                width: 100,
                child: IntrinsicHeight(                  
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    VerticalDivider(
                      //color: Color(0xffDDDADA),
                      color: Colors.black,
                      thickness: 0.1,
                      indent: 10,
                      endIndent: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
                    )

                  ]
                ),
                ),
            ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )
            ),
          ),

        );

  }

  AppBar appBar() {
    return AppBar(

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

  );
  }
}
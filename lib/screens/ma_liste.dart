import 'dart:math';

import 'package:flutter/material.dart';
import 'package:challenge_deux/model/data.dart';
import 'package:challenge_deux/model/shoe_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:animated_icon_button/animated_icon_button.dart';




class Maliste extends StatefulWidget {
  @override
  _MalisteState createState() => _MalisteState();


}

class _MalisteState extends State<Maliste> {



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only( top: 20.0, left: 20.0),
          child: RichText(
             text: TextSpan(
               text: 'Recents Order ',
               style: GoogleFonts.montserrat(
                 fontSize: 20.0,

               ),
               children: <TextSpan>[
                 TextSpan(
                     text: 'of this month',
                   style: GoogleFonts.montserrat(
                     fontSize: 15.0,
                     fontWeight: FontWeight.w200,
                   )
                 ),
               ]
             ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 400,
                child: _buildShoes(),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:15.0, left: 15.0, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your informations',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  _buildShoes() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Swiper(
        viewportFraction: 0.75,

        scale: 0.9,
        itemWidth: 350,
        itemHeight: 400,
        itemCount: currentUser.shoes.length,
        itemBuilder: (buildContext, int index){
          ShoeModel shoeModel = currentUser.shoes[index];
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(

              child: Stack(
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  Positioned(
                      bottom: 90.0,
                      left: 20.0,
                      child: Text(
                        '${shoeModel.nom}',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 25.0
                        ),
                      )
                  ),

                  Positioned(
                    top:5,
                      right: 6,
                      child: AnimatedIconButton(
                        size: 20,
                        onPressed: () {
                          setState(() {

                          });
                        },
                        duration: Duration(milliseconds: 200),
                        endIcon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        startIcon: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                      )
                  ),




                  Positioned(
                      top: 50.0,
                      left: 35.0,
                      child: Container(
                        width: 180,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black
                        ),
                        child: Transform.rotate(
                          angle: pi/60.0,
                          child: Image(
                            image: AssetImage('${shoeModel.imgPath}'),
                            fit: BoxFit.cover,
                            height: 150,
                            width: 150,
                          ),
                        ),
                      )
                  ),



                  Positioned(
                      bottom: 30.0,
                      left: 20.0,
                      child: Text(
                        '\$ ${shoeModel.prix.toString()}',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0
                        ),
                      )
                  )
                ],
              ),
            ),
          );

        },

      ),
    );
  }
}



class RPSCustomPainter extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {



    Path path = new Path();
    path.moveTo(size.width*0.17,size.height*0.10);
    path.lineTo(size.width*0.83,size.height*0.10);
    path.lineTo(size.width*0.83,size.height*0.42);
    path.quadraticBezierTo(size.width*0.76,size.height*0.46,size.width*0.83,size.height*0.48);
    path.quadraticBezierTo(size.width*0.83,size.height*0.56,size.width*0.83,size.height*0.80);
    path.lineTo(size.width*0.17,size.height*0.80);
    path.quadraticBezierTo(size.width*0.17,size.height*0.56,size.width*0.17,size.height*0.48);
    path.quadraticBezierTo(size.width*0.22,size.height*0.45,size.width*0.17,size.height*0.42);
    path.lineTo(size.width*0.17,size.height*0.10);
    path.close();

    return path;


  }

  @override
  bool shouldReclip(CustomClipper oldDelegate) {
    return false;
  }

}










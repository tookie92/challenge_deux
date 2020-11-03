import 'dart:math';

import 'package:flutter/material.dart';
import 'package:challenge_deux/model/data.dart';
import 'package:challenge_deux/model/user_model.dart';
import 'package:challenge_deux/model/shoe_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';


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
               text: 'Recents Order',
               style: GoogleFonts.montserrat(
                 fontSize: 20.0,

               ),
               children: <TextSpan>[
                 TextSpan(
                     text: ' of ${currentUser.nom}',
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
      ],
    );
  }

  _buildShoes() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: currentUser.shoes.length,
      itemBuilder: (BuildContext, int index){
        ShoeModel shoeModel = currentUser.shoes[index];
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(

            child: Stack(
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
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
                    bottom: 65.0,
                    left: 20.0,
                    child: Container(
                      width: 250,
                      child: Text(
                        '${shoeModel.description}',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0
                        ),
                        overflow: TextOverflow.ellipsis,
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

    );
  }
}











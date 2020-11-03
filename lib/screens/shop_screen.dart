import 'package:flutter/material.dart';
import 'package:challenge_deux/screens/ma_liste.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black,
      body: Stack(
        children:[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xff1F1C18),
                    Color(0xff000000),
                  ],

                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              ),
            ),
          ),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.grey[800],
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.grey[800],
                      ),
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search, color: Colors.white,),

                  ),
                ),
              ),
            Maliste(),
          ],
        ),
        ]
      ),
    );
  }
}

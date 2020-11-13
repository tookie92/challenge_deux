
import 'package:challenge_deux/screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLit = false;


  @override
  void initState(){
    super.initState();

    Future.delayed(Duration(milliseconds: 1000),(){
      setState(() {
        _isLit = true;
      });
    });

    Future.delayed(Duration(milliseconds: 5000),(){
      setState(() {
       Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopScreen()));
      });
    });
  }




  Duration _duration = Duration(milliseconds: 1000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Stack(
          children: [
            AnimatedPositioned(
              onEnd: (){

              },
              curve: Curves.bounceInOut,
              duration: _duration,
              bottom: _isLit? MediaQuery.of(context).size.height * 0.5: MediaQuery.of(context).size.height * 0.3,
              right: MediaQuery.of(context).size.width * 0.1,
              child: Text(
                'NIKE',
                textScaleFactor: 2.0,
                style: GoogleFonts.montserrat(
                  color: Color(0xfffdfdfd).withOpacity(0.4),
                  fontSize: 60.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.3,
                  fontStyle: FontStyle.italic
                ),
              ),
            ),

           AnimatedPositioned(
             curve: Curves.easeInBack,
             duration: Duration(milliseconds: 1000),
              top:180.0,
              left: 10.0,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 900),
                curve: Curves.easeInOut,
                opacity: _isLit? 1.0 : 0.0,
                child: Image(
                  image: AssetImage('assets/images/shoees.png'),
                  height: 400.0,
                  width: 400.0,
                  fit: BoxFit.cover,
                ),
              )
            ),



            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.39,
              right: MediaQuery.of(context).size.width * 0.1,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1000),
                opacity: _isLit ? 1.0 : 0.0,
                child: Text(
                  'Just do it',
                  textScaleFactor: 2.0,
                  style: GoogleFonts.greatVibes(
                      color: Color(0xfffdfdfd).withOpacity(1.0),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.3
                  ),
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}

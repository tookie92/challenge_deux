import 'package:flutter/material.dart';
import 'package:challenge_deux/model/shoe_model.dart';
import 'package:google_fonts/google_fonts.dart';


class DetailPage extends StatefulWidget {

  final ShoeModel shoeModel;
  DetailPage(this.shoeModel);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin{


  double width = 400;
bool _isBig = false;

List<bool> _selections;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selections = [true, false, false];
    Future.delayed(Duration(seconds: 1),(){
      //Starting _isFullSun = false but after 1 second we set it true
      setState(() {
        _isBig = true;
      });
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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


          Positioned(
            bottom: 400.0,
              child: Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              )
          ),


          Positioned(
            top: 50,
              left: 30,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: (){
                  Navigator.pop(context);
                },
              )
          ),

          Positioned(

            top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * 0.0,
              child: Hero(
                tag: "hero${widget.shoeModel.imgPath}",
                child: Container(
                  height: 400,
                  child: AnimatedSize(
                    vsync: this,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.decelerate,
                    child: Image(
                      image: AssetImage('assets/images/${widget.shoeModel.imgPath}'),
                      width: width,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
          ),

          Positioned(
            bottom: 270.0,
              left: 120.0,
              child: ToggleButtons(
                children: [
                  Text('S',
                  style: GoogleFonts.montserrat(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                    //color: Colors.white
                  ),
                  ),

                  Text('XL',
                    style: GoogleFonts.montserrat(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                       // color: Colors.white
                    ),
                  ),

                  Text('L',
                    style: GoogleFonts.montserrat(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        //color: Colors.white
                    ),
                  )
                ],
                isSelected: _selections,
                selectedColor: Colors.black,
                color: Colors.white,
                fillColor: Colors.white,
                borderRadius: BorderRadius.circular(30.0),

                onPressed: (int index){
                  setState(() {
                    for (int i = 0; i < _selections.length; i++) {
                      _selections[i] = i == index;
                    }
                  });
                  if (index == 0){
                    setState(() {
                      width = 400;
                    });

                  }else if (index == 1){
                    setState(() {
                      width = 410;
                    });
                  }else{
                    setState(() {
                      width = 420;
                    });
                  }


                },
              )
          ),

          Positioned(
              bottom: 200.0,
              left: 20.0,
              child: AnimatedOpacity(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 500),
                opacity: _isBig? 1.0 : 0.0,
                child: Container(
                  child: Text(
                    "${widget.shoeModel.description}",
                    style: GoogleFonts.montserrat(
                      fontSize: 20.0,
                      color: Colors.white
                    ),
                  ),
                ),
              )
          )


        ],
      ),

    );
  }
}

import 'package:flutter/material.dart';
class AlvogenPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Langage page',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children:<Widget>[
                      Image.network('https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Alvogen_logo.svg/440px-Alvogen_logo.svg.png',fit: BoxFit.contain,height: 32,),
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      )
                      ] ,
        ),
        ),
    body: 
    Stack(
  children: <Widget>[
    Container(
      width: 350,
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(left: 240.0),
      child: ClipOval(
     child: new Image.network("https://firebasestorage.googleapis.com/v0/b/strive-50953.appspot.com/o/Image%2Fte%CC%81le%CC%81chargement.jpeg?alt=media&token=6553c9d8-2eb5-4524-9f6c-29aa68fd14ee",),
  ),
    ),
     Container(
      width: 350,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 40.0),
      child: ClipOval(
     child: new Image.network("https://firebasestorage.googleapis.com/v0/b/strive-50953.appspot.com/o/Image%2Fte%CC%81le%CC%81chargement.jpeg?alt=media&token=6553c9d8-2eb5-4524-9f6c-29aa68fd14ee",),
  ),
    ),
        Container(
      decoration:new BoxDecoration(
     color: Colors.black87
      ),
      
          child: Column(
           children: <Widget>[
            Padding(padding: const EdgeInsets.all(175),),
             Container(
               child: (Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children:<Widget>[
                        Text( "00",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                        Padding(
                          padding:EdgeInsets.symmetric(horizontal:8.0),
                          child:Container(
                          height:1.0,
                          width:70.0,
                          color:Colors.yellow,),),
                        Text( "ALVOGEN",style:TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                      ] ,
             )
               ),
              margin: const EdgeInsets.only(right: 190.0),
             ),
             Padding(padding: const EdgeInsets.all(25),),
            Row(
      children: <Widget>[
        Container(
          child: 
             Text( "A FAST GROWING PHARMA LEADER",
                        style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                    ),
              color: Colors.transparent,
              width: 160,
               margin: const EdgeInsets.only(left: 40.0),
          ),
           Container(
          child: 
              Icon(
                        Icons.vertical_align_bottom,
                        color: Colors.white,
                      ),
             margin: const EdgeInsets.only(left: 150.0),
          ),
      ],
    )
          ],
          ),
    ),
  ],
)

      ),
    );
  }
}
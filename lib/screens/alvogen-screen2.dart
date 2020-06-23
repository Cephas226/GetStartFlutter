import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class AlvogenPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Langage page',
      home: Scaffold(
    body: Container(
      decoration:new BoxDecoration(
      color: Colors.black87
      ),
      
          child: Column(
           children: <Widget>[
              Container(
               child: (Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children:<Widget>[
                       Image.network('https://firebasestorage.googleapis.com/v0/b/strive-50953.appspot.com/o/Image%2Fbg.png?alt=media&token=daa2eaa6-6ca6-455a-90d2-a6f980f1dce2')
                      ] ,
             ))),
              const SizedBox(height: 10.0),
             Container(
               child: (Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children:<Widget>[
                        Text( "04",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                        Padding(
                          padding:EdgeInsets.symmetric(horizontal:8.0),
                          child:Container(
                          height:1.0,
                          width:70.0,
                          color:Colors.yellowAccent,),),
                        Text( "Worldwide",style:TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                        ),
                      ] ,
             )
               ),
              margin: const EdgeInsets.only(right: 190.0),
             ),
               const SizedBox(height: 20.0),
              Container(
               child: (
                        Row(
      children: <Widget>[
        Container(
          child: 
             Text( "Worldwide office",
                    style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    ),
                      maxLines: 2,
                    ),
              color: Colors.transparent,
              width: 170,
               margin: const EdgeInsets.only(left: 40.0),
          ),
            ],
          )
               ),
              margin: const EdgeInsets.only(right: 190.0),
             ),
               const SizedBox(height: 30.0),
                Container(
               child: (
                        Row(
      children: <Widget>[
        Container(
          child: 
             Text( "Alvogen count 35 worldwide offices and his presence in 3 continents : North America,Asia and Europe",
                    style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    ),
                    maxLines: 10,
                    ),
              color: Colors.transparent,
              width: 310,
               margin: const EdgeInsets.only(left: 40.0),
          ),
            ],
          )
               ),
             ),
                const SizedBox(height: 20.0),
                Container(
               child: (
                        Row(
      children: <Widget>[
        Container(
            child: RaisedButton(
                padding: const EdgeInsets.fromLTRB(45.0, 16.0, 30.0, 16.0),
                color: Colors.black26,
                elevation: 0,
                onPressed: () {
                   
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Discover".toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0,
                          color:Colors.white
                          )
                          ,
                    ),
                    const SizedBox(width: 40.0),
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      color:Colors.white,
                      size: 18.0,
                    )
                  ],
                ),
              ),
              color: Colors.transparent,
              width: 210,
               margin: const EdgeInsets.only(left: 40.0),
          ),
            ],
          )
               ),
             ),
          ],
          ),
    ),
      ),
    );
  }
}
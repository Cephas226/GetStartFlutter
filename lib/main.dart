import 'package:GetStartApp/screens/alvogen-screen1.dart';
import 'package:GetStartApp/screens/alvogen-screen2.dart';
import 'package:GetStartApp/screens/changeLangage.dart';
import 'package:GetStartApp/screens/changeLocation.dart';
import 'package:GetStartApp/screens/changePassword.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(MyApp());
  bool _dark=false;
  Brightness _getBrightness() {
     return _dark ? Brightness.dark : Brightness.light;
  }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: HomeScreen()
    );
  }
}   


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          elevation: 0,
          brightness: _getBrightness(),
          iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          backgroundColor: Colors.transparent,
          title: Text(
            'Settings',
            style: TextStyle(color: _dark ? Colors.white : Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.moon),
              onPressed: () {
                
              },
            )
          ],
        ),
         body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.orange,
                    child: ListTile(
                      onTap: () {
                        //open edit profile
                      },
                      title: Text(
                        "Cephas ZOUBGA",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQFsgHXzye_iwA/profile-displayphoto-shrink_400_400/0?e=1597881600&v=beta&t=uUh_ylDZL3qaUwgqN6age1GQpTamDPypraozpkqiSCQ'),
                      ),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.lock_outline,
                            color: Colors.orange,
                          ),
                          title: Text("Change Password"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordPage()));},
                        ),
                        _buildDivider(),
                      ListTile(
                      leading: Icon(
                      FontAwesomeIcons.language,
                      color: Colors.orange, ),
                      title: Text("AlvogenPage"),
                      trailing: Icon(Icons.vertical_align_bottom),
                      onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => AlvogenPage1()));},
                      ),
                        _buildDivider(),
                         ListTile(
                      leading: Icon(
                      FontAwesomeIcons.language,
                      color: Colors.orange, ),
                      title: Text("AlvogenPage2"),
                      trailing: Icon(Icons.touch_app),
                      onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => AlvogenPage2()));},
                      ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.orange,
                          ),
                          title: Text("Change Location"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeLocationPage()));},
                        ),
                         _buildDivider(),
                            ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.orange,
                          ),
                          title: Text("Change Langage"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeLangagePage()));},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Colors.orange,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Received notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.orange,
                    contentPadding: const EdgeInsets.all(0),
                    value: false,
                    title: Text("Received newsletter"),
                    onChanged: null,
                  ),
                  SwitchListTile(
                    activeColor: Colors.orange,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Received Offer Notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.orange,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Received App Updates"),
                    onChanged: null,
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
            Positioned(
              bottom: -20,
              left: -20,
              child: Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: 00,
              left: 00,
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.powerOff,
                  color: Colors.white,
                ),
                onPressed: () {
                  //log out
                },
              ),
            )
          ],
        ),      
    );
  }
}
  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
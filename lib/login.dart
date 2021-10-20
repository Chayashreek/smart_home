import 'package:flutter/material.dart';
import 'package:smart_login/adding_device.dart';
import 'package:smart_login/home.dart';
import 'package:smart_login/style.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF03989e),

      // persist create account link at the bottom of screen
      bottomNavigationBar: _createAccountLink(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          _topheader(),
          Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.grey[50],
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 40),
                      _labelText('Email:'),
                      _inputTextField('example@email.com', false),
                      SizedBox(height: 16),
                      _labelText('Password:'),
                      _inputTextField('******', true),
                      SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            //TODO
                          },
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 46,
                          width: 160,
                          child: RaisedButton(
                            onPressed: () {
                              //TODO
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            color: Color(0XFF03989e),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                          SizedBox(width: 16),

                          SizedBox(width: 16),

                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }

  _createAccountLink() {
    return Container(
      color: Colors.grey[50],
      padding: EdgeInsets.only(bottom: 16),
      height: 60,
      child: Center(
        child: Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            //color: facebookColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  //button to login in using scial media,
  _loginSocialMediaBtn(IconData icon, Color bgColor) {
    return SizedBox.fromSize(
      size: Size(54, 54), //button width and height
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Material(
          elevation: 16,
          shadowColor: Colors.black,
          color: bgColor,
          child: InkWell(
            splashColor: Colors.white12,
            onTap: () {},
            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _inputTextField(hintText, bool obscuretext) {
    return Container(
      height: 56,
      padding: EdgeInsets.fromLTRB(16, 3, 16, 6),
      margin: EdgeInsets.all(8),
      decoration: raisedDecoration,
      child: Center(
        child: TextField(
          obscureText: obscuretext,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black38,
              )),
        ),
      ),
    );
  }

  _labelText(title) {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  _topheader() {
    return Padding(
      padding: EdgeInsets.only(left: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Login to\nYour\nAccount',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 28,
            ),
          ),
          Image.asset(
            'assets/gbimage.png',
            height: 170,
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );
  }
}
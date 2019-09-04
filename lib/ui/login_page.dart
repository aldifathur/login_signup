import 'package:flutter/material.dart';
import 'package:login_signup/custom/Colors.dart';
import 'package:login_signup/custom/Sizes.dart';
import 'package:login_signup/custom/widget/ButtonRounded8dp.dart';
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Sizes _sizes = Sizes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Login",
            style: TextStyle(fontFamily: 'CoolveticaBk', letterSpacing: 1),
          ),
          backgroundColor: Colors.cyan,
        ),
        body: ListView(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.only(
              top: _sizes.width16dp(context),
              bottom: _sizes.width16dp(context),
              left: _sizes.width16dp(context),
              right: _sizes.width16dp(context)),
          children: <Widget>[
            Center(
              child: Text(
                "WELCOME",
                style: TextStyle(fontFamily: 'CoolveticaRg', letterSpacing: 4, fontSize: _sizes.width20dp(context), color: black),
              ),
            ),
            _form(),
          ],
        ));
  }

  Widget _form(){
    return Form(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: _sizes.width16dp(context)),
            child: TextFormField(
              decoration: InputDecoration(
//                hintText: "Username",
              labelStyle: TextStyle(fontFamily: 'CoolveticaBk', letterSpacing: 1, fontSize: _sizes.width14dp(context)),
                labelText: "Username",
                hintStyle: TextStyle(fontSize: _sizes.width14dp(context)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _sizes.width16dp(context)),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
//                hintText: "Password",
                labelStyle: TextStyle(fontFamily: 'CoolveticaBk', letterSpacing: 1, fontSize: _sizes.width14dp(context)),
                labelText: "Password",
                hintStyle: TextStyle(fontSize: _sizes.width14dp(context)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _sizes.width18dp(context)),
            child: GestureDetector(
              onTap: () {Toast.show("Login!", context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);},
              child: ButtonRounded8dp(
                title: "Login",
                color: Colors.cyan,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _sizes.width8dp(context)),
            child: GestureDetector(
              child: Text(
                "Forget Password",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: _sizes.width12dp(context),
                  fontFamily: 'CoolveticaBk', letterSpacing: 1
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void toast(BuildContext context){
    Toast.show("Masuk!", context);
  }
}

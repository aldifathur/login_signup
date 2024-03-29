import 'package:flutter/material.dart';
import 'package:login_signup/custom/Sizes.dart';

class ButtonRounded8dp extends StatefulWidget {
  final String title;
  final Color color;

  const ButtonRounded8dp({Key key, this.title, this.color}) : super(key: key);

  @override
  _ButtonRounded8dpState createState() => _ButtonRounded8dpState();
}

class _ButtonRounded8dpState extends State<ButtonRounded8dp> {
  Sizes _sizes = Sizes();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: _sizes.width16dp(context), bottom: _sizes.width16dp(context)),
        padding: EdgeInsets.only(
            top: _sizes.width12dp(context), bottom: _sizes.width12dp(context)),
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 8.0,
              color: Colors.grey.withOpacity(.6),
              offset: Offset(1.0, 2.0))
        ], borderRadius: BorderRadius.circular(8.0), color: widget.color),
        child: Text(
          widget.title,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "CoolveticaBk",
              fontSize: _sizes.width14dp(context),
              letterSpacing: 1),
        ));
  }
}

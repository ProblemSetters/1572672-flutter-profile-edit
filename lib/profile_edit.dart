import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _ProfileEditState createState() => new _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0, 100, 0, 100),
              width: width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/logo.png',
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

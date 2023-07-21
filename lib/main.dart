import 'package:flutter/material.dart';
import 'package:hello_flutter/profile_edit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialColor mycolor = MaterialColor(
      Color.fromRGBO(57, 66, 78, 1).value,
      <int, Color>{
        50: Color.fromRGBO(57, 66, 78, 0.1),
        100: Color.fromRGBO(57, 66, 78, 0.2),
        200: Color.fromRGBO(57, 66, 78, 0.3),
        300: Color.fromRGBO(57, 66, 78, 0.4),
        400: Color.fromRGBO(57, 66, 78, 0.5),
        500: Color.fromRGBO(57, 66, 78, 0.6),
        600: Color.fromRGBO(57, 66, 78, 0.7),
        700: Color.fromRGBO(57, 66, 78, 0.8),
        800: Color.fromRGBO(57, 66, 78, 0.9),
        900: Color.fromRGBO(57, 66, 78, 1),
      },
    );
    return MaterialApp(
      title: 'Flutter Login Screen',
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: const MyHomePage(title: 'Flutter Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final routes = <String, WidgetBuilder>{
    ProfileEdit.tag: (context) => ProfileEdit(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: ProfileEdit(),
      routes: routes,
    );
  }
}

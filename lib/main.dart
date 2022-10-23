import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "Registration Window"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = "Dmitriy";
  String _surname = "Sidukov";
  final String _email = "sidukov.dima@mail.ru";

  void _updateName(String newName) {
    setState(() {
      if (newName.isNotEmpty) {
        _name = newName;
      } else {
        _name = "Dmitriy";
      }
    });
  }

  void _updateSurname(String newSurname) {
    setState(() {
      if (newSurname.isNotEmpty) {
        _surname = newSurname;
      } else {
        _surname = "Sidukov";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF9F9F9),
        appBar: null,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
                padding: EdgeInsets.only(top: 29),
                child: Text(
                  "bio",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF181D27)),
                )),
            const Padding(
                padding: EdgeInsets.only(top: 43),
                child: CircleAvatar(
                  radius: 36,
                  backgroundImage: NetworkImage(
                      "https://purr.objects-us-east-1.dream.io/i/2617313172_68ff105408.jpg"),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Text(
                  "$_name $_surname",
                  style: const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF181D27)),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(_email,
                  style: const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFABABAB))),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 16, right: 16, bottom: 10),
                child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: false,
                    onChanged: (text) {
                      _updateName(text);
                    },
                    decoration: const InputDecoration(
                        labelText: "What's your first name?",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle:
                            TextStyle(fontSize: 13, color: Color(0xFF555555)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.5),
                                topRight: Radius.circular(4.5))),
                        filled: true,
                        fillColor: Colors.white))),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: false,
                    onChanged: (text) {
                      _updateSurname(text);
                    },
                    decoration: const InputDecoration(
                        labelText: "And your last name?",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle:
                            TextStyle(fontSize: 13, color: Color(0xFF555555)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.5),
                                topRight: Radius.circular(4.5))),
                        filled: true,
                        fillColor: Colors.white))),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [MaskedInputFormatter('(###) ### ## ##')],
                    autocorrect: false,
                    decoration: InputDecoration(
                        prefixIcon: Container(
                          margin: const EdgeInsets.only(
                              top: 9, bottom: 9, right: 16),
                          decoration: const BoxDecoration(
                              border: BorderDirectional(
                                  end: BorderSide(color: Color(0xFFC7CAD3)))),
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: SvgPicture.asset(
                                'assets/nigeria.svg',
                                height: 20,
                                width: 20,
                                allowDrawingOutsideViewBox: true,
                              )),
                        ),
                        labelText: "Phone number",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: const TextStyle(
                            fontSize: 13, color: Color(0xFF555555)),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        border: const UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.5),
                                topRight: Radius.circular(4.5))),
                        filled: true,
                        fillColor: Colors.white))),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: false,
                    decoration: InputDecoration(
                        labelText: "Your gender",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle:
                            TextStyle(fontSize: 13, color: Color(0xFF555555)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.5),
                                topRight: Radius.circular(4.5))),
                        filled: true,
                        fillColor: Colors.white))),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: false,
                    decoration: InputDecoration(
                        labelText: "What is your date of birth?",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle:
                            TextStyle(fontSize: 13, color: Color(0xFF555555)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                        ),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.5),
                                topRight: Radius.circular(4.5))),
                        filled: true,
                        fillColor: Colors.white)))
          ],
        ))));
  }
}

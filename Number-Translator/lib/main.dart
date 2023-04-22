import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const TranslateApp());

class TranslateApp extends StatefulWidget {
  const TranslateApp({Key? key}) : super(key: key);

  @override
  createState() {
    return TranslateAppState();
  }
}

class TranslateAppState extends State<TranslateApp> {
  final Random _randnum = Random();
  int _num = 1;
  String _spanish = "";
  String _japanese = "";

  Map<int, String> numero = {
    1: "Uno",
    2: "Dos",
    3: "Tres",
    4: "Cuatro",
    5: "Cinco",
    6: "Seis",
    7: "Siete",
    8: "Ocho",
    9: "Nueve",
    10: "Diez",
  };

  void _generateRandomSpanish() {
    setState(() {
      int spain = _num;
      while (_num == spain) {
        _num = _randnum.nextInt(10) + 1;
      }
    });
  }

  void _spanishTranslate() {
    setState(() {
      if (numero.containsKey(_num)) {
        _spanish = numero[_num]!;
      } else {
        _spanish = "INVALID";
      }
    });
  }

  Map<int, String> bango = {
    1: "Ichi",
    2: "Ni",
    3: "San",
    4: "Shi/Yon",
    5: "Go",
    6: "Roku",
    7: "Shichi/Nana",
    8: "Hachi",
    9: "Kyu",
    10: "Juu",
  };

  void _generateRandomJapanese() {
    setState(() {
      int japan = _num;
      while (_num == japan) {
        _num = _randnum.nextInt(10) + 1;
      }
    });
  }

  void _japaneseTranslate() {
    setState(() {
      if (numero.containsKey(_num)) {
        _japanese = bango[_num]!;
      } else {
        _japanese = "INVALID";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spanish and Japanese Numbers",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Number Generator and Translator",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            backgroundColor: const Color(0xff210964),
          ),
          body: Center(
              child: Column(children: [
            Container(
              width: 300,
              height: 150,
              margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.5),
                  color: const Color(0xff3060e5)),
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 32),
                      child: Text(
                        "$_num",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffff9a39)),
                      )),
                  Container(
                    padding: const EdgeInsets.only(top: 13),
                    child: ElevatedButton(
                        onPressed: _generateRandomSpanish,
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xff210964))),
                        child: const Text("Click to Generate Random Number",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffff9a39),
                                fontStyle: FontStyle.italic))),
                  )
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 30, bottom: 5),
                width: 300,
                height: 150,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.5),
                    color: const Color(0xffff9a39)),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: Text(
                          _spanish,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3060e5)),
                        )),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                          onPressed: _spanishTranslate,
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff210964))),
                          child: const Text("Spanish Number Translator",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffff9a39),
                                  fontStyle: FontStyle.italic))),
                    ),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(top: 30, bottom: 5),
                width: 300,
                height: 180,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.5),
                    color: const Color(0xffff9a39)),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: Text(
                          _japanese,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3060e5)),
                        )),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                          onPressed: _japaneseTranslate,
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff210964))),
                          child: const Text("Japanese Number Translator",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffff9a39),
                                  fontStyle: FontStyle.italic))),
                    ),
                    const Text(
                      "by JC Garcia",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Color(0xff3060e5)),
                    )
                  ],
                )),
          ]))),
    );
  }
}

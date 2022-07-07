// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tugas_calculator/hasil.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController layar = new TextEditingController();
  List<int> simpanangka = [];
  List<String> simpanoperator = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    layar.text = "0";
    simpanangka.clear();
    simpanoperator.clear();
  }

  void _angka(int i) {
    int angka = int.parse(layar.text);
    layar.text = ((angka * 10) + i).toString();
    setState(() {});
  }

  plus() {
    int angka = int.parse(layar.text);
    simpanangka.add(angka);
    simpanoperator.add("+");
    layar.text = "0";
    setState(() {});
  }

  min() {
    int angka = int.parse(layar.text);
    simpanangka.add(angka);
    simpanoperator.add("-");
    layar.text = "0";
    setState(() {});
  }

  kali() {
    int angka = int.parse(layar.text);
    simpanangka.add(angka);
    simpanoperator.add("X");
    layar.text = "0";
    setState(() {});
  }

  bagi() {
    int angka = int.parse(layar.text);
    simpanangka.add(angka);
    simpanoperator.add("/");
    layar.text = "0";
    setState(() {});
  }

  quad() {
    int angka = int.parse(layar.text);
    simpanangka.add(angka);
    simpanoperator.add("^");
    layar.text = "0";
    setState(() {});
  }

  cc() {
    layar.text = "0";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                enabled: false,
                controller: layar,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.calculate,
                    color: Colors.blue,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.blue, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.blue,
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(1);
                        },
                        child: Text("1")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(2);
                        },
                        child: Text("2")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(3);
                        },
                        child: Text("3")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(onPressed: plus, child: Text("+")),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(4);
                        },
                        child: Text("4")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(5);
                        },
                        child: Text("5")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(6);
                        },
                        child: Text("6")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(onPressed: min, child: Text("-")),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(7);
                        },
                        child: Text("7")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(8);
                        },
                        child: Text("8")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(9);
                        },
                        child: Text("9")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(onPressed: kali, child: Text("X")),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(onPressed: cc, child: Text("C")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          _angka(0);
                        },
                        child: Text("0")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(onPressed: quad, child: Text("^")),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(onPressed: bagi, child: Text("/")),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: () {
                          simpanangka.add(int.parse(layar.text));
                          simpanoperator.add("=");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HHasil(
                                angka: simpanangka,
                                operator: simpanoperator,
                              ),
                            ),
                          ).then((value) => initState());
                        },
                        child: Text("=")),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

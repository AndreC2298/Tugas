import 'package:flutter/material.dart';
import 'package:networkingfl/dataclass.dart';

class DetailPage extends StatelessWidget {

  final Data data;

  DetailPage(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
          Text(datad.namad),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 60.0,
                              backgroundImage:
                                  NetworkImage(data.avatard),
                              backgroundColor: Colors.transparent,
                            ),
                            Text(
                              data.namad,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text(
                              data.alamatd,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              data.emaild,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              data.pekerjaand,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(height: 20.0,),
                            Text(
                              "\"${data.quoted}\"",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "- ${data.namad}",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
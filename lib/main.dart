import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dataclass.dart';
import 'apiservices.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Service serviceAPI=Service();
  late Future<List<cData>> listData;

  @override

  void initState(){
    super.initState();
    listData = serviceAPI.getAllData();

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Percobaan API',
      home: Scaffold(
        appBar: AppBar(title: Text("Percobaan Pertama"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: FutureBuilder<List<cData>>(
                  future: listData,
                  builder: (context, snapshot){
                    if(snapshot.hasData){
                      List<cData> isiData= snapshot.data!;
                      return ListView.builder(
                        itemCount: isiData.length,
                        itemBuilder: (context,index){
                          return Card(
                            child: ListTile(
                              title: Text(isiData[index].cnama),
                              leading: CircleAvatar(backgroundImage: NetworkImage(isiData[index].cavatar)
                              ),
                              subtitle: Text(isiData[index].cpekerjaan),
                              onTap: (){
                                showData(isiData[index].cid);
                              },
                               onLongPress: (){
                                 deleteData(isiData[index].cid);
              },
                            ),
                          );
                        },
                      );
                    } else if(snapshot.hasError){
                      return Text("${snapshot.error}");
                    }
                    return const CircularProgressIndicator();
                  },
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(45),
              ),
              onPressed:(){
                tambahData();
              }, 
            child: Text('Tambah Data'),
            ),
          ],
        ),
      ),
    );
  }
  void tambahData()async{
    bool response= await serviceAPI.postData('pnama', 'pavatar', 'palamat', 'pemail', 'ppkerjaan', 'pquote');

    if(response== true){
      setState(() {
        listData= serviceAPI.getAllData();
      });
    }
  }
  void showData(String id) async{
    cData response = await serviceAPI.getSingleData(id);
    log("data=${response.cnama}-${response.cemail}");
  }
  void deleteData(String id) async{
    bool response = await serviceAPI.deleteData(id);
       if(response== true){
      setState(() {
        listData= serviceAPI.getAllData();
      });
    }else{
      log("Error data tidak terhapus");
    }
  }
}

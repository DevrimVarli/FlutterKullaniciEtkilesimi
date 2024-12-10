import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var tfController=TextEditingController();
String alinanVeri="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder:(BuildContext context){
                        return AlertDialog(
                          title: Text("Başlık"),
                          content: Text("İçerik"),
                          actions: [
                            TextButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Text("İptal")),
                            TextButton(
                                onPressed: (){
                                  print("Tamam seçildi");
                                },
                                child: Text("Tamam")),
                          ],
                        );
                      });
                },
                child: Text("Basit Alert"),),
            ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,

                    builder:(BuildContext context){
                      return AlertDialog(
                        title: Text("Başlık",style: TextStyle(color: Colors.white),),
                        content: SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              TextField(
                                controller: tfController,
                                decoration: InputDecoration(
                                  labelText: "Veri",
                                ),
                              ),


                            ],
                          ),
                        ),
                        backgroundColor: Colors.lightGreenAccent,
                        actions: [

                          TextButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Text("İptal")),
                          TextButton(
                              onPressed: (){
                                alinanVeri=tfController.text;
                               print("Alinan veri:$alinanVeri ");
                               Navigator.pop(context);
                               tfController.text="";


                              },
                              child: Text("Veri Oku"),),
                        ],
                      );
                    });
              },
              child: Text("Özel Alert"),),
          ],
        ),
      ),

    );
  }
}

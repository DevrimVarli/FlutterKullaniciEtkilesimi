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
            PopupMenuButton(
                child: Icon(Icons.open_in_new),
                itemBuilder:(context)=>[
                  PopupMenuItem(
                    child: Text("Sil",style: TextStyle(color: Colors.blue),),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Güncelle",style: TextStyle(color: Colors.blue),),
                    value: 2,
                  ),

                ] ,
              onCanceled: (){
                  print("Seçim yapılmadı");
              },
              onSelected: (menuItemValue){
                  if(menuItemValue==1){
                    print("Sil Seçildi");
                  }
                  if(menuItemValue==2){
                    print("Güncelle seçildi");
                  }
              },
            ),
          ],
        ),
      ),

    );
  }
}

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
            ElevatedButton(
                onPressed:(){
                  ScaffoldMessenger.of(context).showSnackBar(

                      SnackBar(
                        duration: Duration(seconds: 2),

                        content: Text("Merhaba",style: TextStyle(color: Colors.white),),
                        backgroundColor:Colors.red ,

                      ),

                  );


                },
                child:Text("Varsayılan",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),),
            ElevatedButton(
              onPressed:(){
                ScaffoldMessenger.of(context).showSnackBar(

                  SnackBar(


                    content: Text("Silmek İster Misiniz?"),
                    backgroundColor: Colors.red,

                    action: SnackBarAction(
                        label: "Evet",
                        onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 2),
                        content: Text("Silindi"),


                      ),
                    );
                  }),),
                );

              },
              child:Text("Snackbar Action",style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigoAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),

            ),
            ),
            ElevatedButton(
              onPressed:(){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 2),
                    content: Text("İnternet Bağlantısı Yok!"),
                  backgroundColor: Colors.red,
                  action: SnackBarAction(

                      label: "Tekrar Dene",
                      textColor: Colors.blue,
                      onPressed: (){
                    print("Tekrar Denendi");
                  }),),
                );

              },
              child:Text("Snackbar Özel",style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigoAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
            ),
            ),


          ],
        ),
      ),

    );
  }
}

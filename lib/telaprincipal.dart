import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),

      debugShowCheckedModeBanner: false,

      home: const TelaPrincipal(title: 'Tela Principal'),
    );
  }
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Personalização da Barra de Menu
        title: Text(widget.title,style:(TextStyle(color: Colors.white))),
        centerTitle: true,
        backgroundColor: Color(0xFFfbba00),

      ),
      body:  Center(

      ),

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFfbba00),
              ),

              //Decoração abaixo do título do MENU
              child: Text('MENU',style:(TextStyle(color: Colors.white,fontSize: 20))),
            ),
            ListTile(
              title: const Text('Item 1',style: (TextStyle(color: Colors.black,fontSize: 18))),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2',style: (TextStyle(color: Colors.black,fontSize: 18))),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_esqueleto/telaprincipal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(

    theme: ThemeData(

        primaryColor: Colors.purple

    ),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,

                colors:[
                  //   Color(0xFF8A2387),
                  //   Color(0xFFE94057),
                  //   Color(0xFFF27121),

                  Color(0xFFfbba00),
                  Color(0xFFfbba00),
                  Color(0xFFF0E68C),


                ]
            ),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 22),
              Image.asset('images/logo.png'),

              Container(
                height: 520,
                width: 325,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),

                    Text('Aplicativo',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                      ),
                    ),






                    SizedBox(height: 20),




                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                          suffixIcon: Icon(FontAwesomeIcons.envelope,
                            size: 17,),

                        ),
                      ),
                    ),

                    Container(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                          suffixIcon: Icon(FontAwesomeIcons.eyeSlash,
                            size: 17,),
                        ),
                      ),
                    ),



                    GestureDetector( // Coloque o método para tela recuperar senha no onTap

                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyApp()));
                      },

                      child:   Padding(

                        padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            Text('Recuperar Senha',

                              style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent[700],
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),

                    GestureDetector(

                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyApp()));
                      },

                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors:[
                                // Color(0xFF8A2387),
                                // Color(0xFFE94057),
                                //  Color(0xFFF27121),

                                Color(0xFFfbba00),
                                Color(0xFFFFD700),

                                Color(0xFFFFFF00),

                              ]
                          ),
                        ),


                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),

                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors:[
                                //   Color(0xFF8A2387),
                                //   Color(0xFFE94057),
                                //   Color(0xFFF27121),

                                Color(0xFFfbba00),
                                Color(0xFFFFD700),

                                Color(0xFFFFFF00),

                              ]
                          ),
                        ),


                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('Cadastre-se ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),

                          ),
                        ),

                      ),
                    ),


                    SizedBox(height: 25),
                    Text('Login Com Redes Sociais',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(FontAwesomeIcons.instagram,color: Colors.pinkAccent[700], size: 40),
                        Icon(FontAwesomeIcons.facebookF,color: Colors.blue[700],size: 40),
                        Icon(FontAwesomeIcons.twitter,color: Colors.lightBlueAccent[700],size: 40),
                      ],
                    ),

                  ],
                ),

              ),

            ],
          ),

        ),
      ),
    );
  }
}



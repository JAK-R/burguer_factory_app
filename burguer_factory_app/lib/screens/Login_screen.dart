import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home_screen.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget> [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: [
                        Colors.orange,
                         Colors.yellow,
                ]
              )
              ),
              child: Image.asset("assets/BF_SinFondo.png",
               color: Colors.black,
              height: 200,
              ),
            ),
            Transform.translate(
              offset: Offset(0, -20),
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  elevation: 10,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 260),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: "Usuario"),
                          ),
                          SizedBox(height: 40),
                          TextFormField(
                          decoration: InputDecoration(labelText: "Contraseña",
                          
                          ),
                          obscureText: true,
                          ),
                          SizedBox(height: 40),
                          ElevatedButton(
                            onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()),
                               );
                            },
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Iniciar Sesión"),
                               
                               Icon(Icons.arrow_forward)
                             ],
                           )
                           ),
                       SizedBox(height: 20), 
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Todavía no tenés una cuenta?"),
                          TextButton(onPressed: (){
                          },
                           child: Text("Registrate"))
                        ],
                       )   
                      ],
                      
                    ),
                  ),
                ),
              ),
            ),
        ],
        ),
      )

    );
  }
}
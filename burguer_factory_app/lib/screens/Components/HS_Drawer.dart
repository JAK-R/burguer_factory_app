
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../AboutUs.dart';

class HS_Drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.all(10),
              child: Image.network("https://media.istockphoto.com/id/1206323282/es/foto/hamburguesa-jugosa-sobre-fondo-blanco.jpg?s=612x612&w=0&k=20&c=r2mLaVFZxtRk4MeKpdQLtwTkcctyOpGEP-OxPeyo4_c=",
              
              ),
            ),
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text("Gracias por elegirnos"),
                    Text(" USERNAME")
                  ],
                          ),
              ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.list_alt),
                  SizedBox(width: 10),
                  Text("Mis Pedidos"),
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.card_giftcard),
                  SizedBox(width: 10),
                  Text("Mis Cupones"),
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.people),
                  SizedBox(width: 10),
                  Text("Invitar Amigos"),
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.chat),
                  SizedBox(width: 10),
                  Text("Chat Online"),
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.question_mark),
                  SizedBox(width: 10),
                  Text("Preguntas Frecuentes"),
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.book),
                  SizedBox(width: 10),
                  Text("Politicas de Privacidad"),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutUs()));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                color: Colors.grey,
                child: Row(
                  children: [
                    Icon(Icons.history),
                    SizedBox(width: 10),
                    Text("Sobre la Nosotros"),
                  ],
                ),
              ),
            ),
            
           Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 10),
                  Text("Salir"),
                ],
              ),
            ),
            SizedBox(height: 2,)
            ]
          ),
    );
      }
}
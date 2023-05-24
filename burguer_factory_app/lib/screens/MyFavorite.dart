import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/burguer.dart';
import '../Provider/burguer_provider.dart';


class MyFavoriteScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFavoriteScreenState();
}

class MyFavoriteScreenState extends State<MyFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    var myFavorite = context.watch<BurguerProvider>().myFavorite;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Mis Favoritos",
          style: TextStyle(color: Colors.blueGrey),
        ),
        
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            ),
          itemCount: myFavorite.length,
          itemBuilder: (context, index) {
            Burguer burguer = myFavorite[index];
            return Card(
              key: ObjectKey(burguer),
              color: Colors.white,
              elevation: 10,
              child: Column(
                children: [
                Image.network(burguer.image, width: 100, height: 100),
                Text(burguer.title),
                Text(burguer.price.toString()),
                TextButton(onPressed: (){
                  context.read<BurguerProvider>().removeMyFavorite(burguer);
                },
                 child: Text("Eliminar", style: TextStyle(
                  color: Colors.redAccent, fontWeight: FontWeight.bold
                 ),))
              ]),
            );
          },
        ),
      ),
    );
  }
}

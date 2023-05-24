
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/burguer.dart';
import '../Provider/burguer_provider.dart';
import 'Components/HS_Drawer.dart';
import 'MyFavorite.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var myFavorite = context.watch<BurguerProvider>().myFavorite;
    var burguers = context.watch<BurguerProvider>().burguers;

    return Scaffold(
      drawer: Drawer(backgroundColor: Colors.orange,
      child: HS_Drawer()
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0,
        title: const Text(
          "Productos",
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.blueGrey),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyFavoriteScreen()));
                },
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    myFavorite.length.toString(),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),


      
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: burguers.length,
          itemBuilder: (context, index) {
            Burguer burguer = burguers[index];
            return Card(
              key: ObjectKey(burguer),
              color: Colors.white,
              elevation: 1,
              child: ListTile(
                contentPadding: EdgeInsets.all(2),
                leading: Image.network(
                  burguer.image,
                  width: 100,
                  height: 100,
                ),
                title: Text(burguer.title),
                subtitle: Text(burguer.price.toString()),
                trailing: IconButton(
                  icon: Icon(
                    Icons.add_box,
                    color: myFavorite.contains(burguer)?
                    Colors.redAccent:
                    Colors.grey
                  ), onPressed: () { 

                    if(!myFavorite.contains(burguer)){
                      context.read<BurguerProvider>().addToMyFavorite(burguer);
                    }else{
                      context.read<BurguerProvider>().removeMyFavorite(burguer);
                    }

                   },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

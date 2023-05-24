import 'dart:math';
import 'package:flutter/material.dart';
import '../Models/burguer.dart';

List<Burguer> initialData = List.generate(20, (index)=> 
Burguer( title: "Hamburguesa $index",
 price: double.parse((Random().nextInt(100) * index).toString()),
 image:  "https://media.istockphoto.com/id/1206323282/es/foto/hamburguesa-jugosa-sobre-fondo-blanco.jpg?s=612x612&w=0&k=20&c=r2mLaVFZxtRk4MeKpdQLtwTkcctyOpGEP-OxPeyo4_c=" ));

class BurguerProvider extends ChangeNotifier{
  List<Burguer> _burguers = initialData;

  List<Burguer> get burguers => _burguers; //Esta sería la lista principal.

  List<Burguer> _myFavorite =[]; //Esta sería la lista de favoritos.

  List<Burguer> get myFavorite => _myFavorite;

  void addToMyFavorite(Burguer burguer){
    _myFavorite.add(burguer);
    notifyListeners();

  }

  void removeMyFavorite (Burguer burguer){
    _myFavorite.remove(burguer);
    notifyListeners();
  }

}
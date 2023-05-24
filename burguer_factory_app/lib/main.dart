import 'package:burguer_factory_app/screens/Home_screen.dart';
import 'package:burguer_factory_app/screens/Login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/burguer_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_)=> BurguerProvider()
  , child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.orange[800],),
        
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (BuildContext context) {
            switch (settings.name){
              case "/":
              return LoginPage();
              default:
              return HomeScreen();
              
            }
        });
      },
    );
  }
}
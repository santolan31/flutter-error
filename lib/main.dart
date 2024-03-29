import 'package:flutter/material.dart';

import 'screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: "home",
      routes: {
        "home": (_)=> const HomeScreen(),
        "details": (_)=> const DetailsScreen(),
      },

      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
           color: Colors.indigo,
           elevation: 5,
           centerTitle: true
           
        )
      ),
      
    );
  }
} 
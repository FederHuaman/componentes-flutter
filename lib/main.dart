import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart'; 
import 'package:componentes/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:  HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings )
      {
        return MaterialPageRoute(builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
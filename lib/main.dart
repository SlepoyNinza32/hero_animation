import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'generet_routes.dart';

void main() {
  runApp( const MaterialApp(
    onGenerateRoute: GenerateRoutes.onGenerate,
    initialRoute: GenerateRoutes.HOME,
  ),);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final String photo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: Center(
        child: MaterialButton(
          child: Text('to second'),
          onPressed: () {
            Navigator.pushNamed(context, GenerateRoutes.SECOND,);
          },
        ),
      ),
    );
  }
}

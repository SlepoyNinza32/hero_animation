import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _ScecondPegeState();
}

class _ScecondPegeState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: Center(
        child: MaterialButton(
          child: Text('to third'),
          onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
        ),
      ),
    );;
  }
}

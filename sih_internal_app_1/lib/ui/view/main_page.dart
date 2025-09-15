import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Placeholder(),
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,),
      ),
    );
  }
}
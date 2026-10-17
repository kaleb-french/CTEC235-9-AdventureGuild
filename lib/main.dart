import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'adventurer.dart';
import 'guild_roster.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PartyModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guild Hall',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Main(),
    );
  }
}

class Main extends StatelessWidget{
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:  Text("Guild Hall"),
        centerTitle: true,
      ),
      body: GuilHallRoster(),
    );
  }

}
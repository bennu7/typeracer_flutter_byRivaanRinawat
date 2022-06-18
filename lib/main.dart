import 'package:flutter/material.dart';
import 'package:typeracer/screens/create_room_screen.dart';
import 'package:typeracer/screens/home_screen.dart';
import 'package:typeracer/screens/join_room_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TypeRacer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/create-room': (context) => const CreateRoomScreen(),
        '/join-room': (context) => const JoinRoomScreen(),
      },
    );
  }
}

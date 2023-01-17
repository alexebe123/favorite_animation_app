import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: LikeButton(
          likeBuilder: (isLiked) {
            return Icon(Icons.favorite,
                size: 150, color: isLiked ? Colors.purple : Colors.grey);
          },
          animationDuration: const Duration(seconds: 5),
          size: 150,
          circleColor: const CircleColor(start: Colors.yellow, end: Colors.red),
          bubblesColor: const BubblesColor(
              dotPrimaryColor: Colors.purple, dotSecondaryColor: Colors.green),
        ),
      )),
    );
  }
}

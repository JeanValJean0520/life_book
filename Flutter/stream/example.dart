import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "lab",
      home: Lab(),
    );
  }
}

class Lab extends StatefulWidget {
  const Lab({super.key});

  @override
  State<Lab> createState() => _LabState();
}

class _LabState extends State<Lab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StreamBuilder(
                stream: _stream(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return Text("${snapshot.data}");
                })
          ],
        ),
      ),
    );
  }
}

// 1초마다 카운트하여 최대 21까지 카운트 하는 기능
Stream _stream() {
  return Stream.periodic(const Duration(seconds: 1), (int x) => x).take(21);
}

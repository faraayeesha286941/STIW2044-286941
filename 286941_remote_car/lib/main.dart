import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remote Control',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Remote Control'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String statement = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 300,
              color: Color.fromARGB(255, 168, 172, 180),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {
                          setState(() {
                            statement = "Forward";
                          });
                        }, child: const Text("Forward")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(onPressed: () {
                          setState(() {
                            statement = "Left";
                          });
                        }, child: const Text("Left")),
                        ElevatedButton(onPressed: () {
                          setState(() {
                            statement = "Right";
                          });
                        }, child: const Text("Right")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {
                          setState(() {
                            statement = "Reverse";
                          });
                        }, child: const Text("Reverse")),
                      ],
                    ),
                    Text(statement)
                  ],
                ),
              ),
            ),
          ),
        SizedBox(
          height: 60,
        ),
        ElevatedButton(onPressed: () {
          setState(() {
            statement = "Stopped";
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
        ),
        child: const Text("STOP",
        style: TextStyle(fontSize: 24),
        )
        ),
        ],
      )
      );
  }

  void onPressed() {

  }
}

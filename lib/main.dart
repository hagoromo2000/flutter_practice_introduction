import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  // _MyHomePageStateを利用する
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _evenOrOdds = "偶数";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _evenOrOdds = _counter % 2 == 0 ? "偶数" : "奇数";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: const [
            Icon(Icons.create),
            Text("初めてのタイトル"),
          ],
        ),
      ),
      body: Column(children: [
        const Text("Hello world"),
        const Text("ハローワールド"),
        TextButton(
            onPressed: () => {print("ボタンが押されたよ")}, child: const Text("ボタン")),
        Row(
          // 列の要素を等間隔で表示する
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30.0,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 36.0,
            ),
          ],
        ),
        Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          _evenOrOdds,
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.

      drawer: const Drawer(child: Center(child: Text("Drawer"))),
      endDrawer: const Drawer(child: Center(child: Text("EndDrawer"))),
    );
  }
}

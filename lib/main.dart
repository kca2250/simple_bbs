import 'package:flutter/material.dart';
import 'package:simple_bbs/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/post': (context) => const PostPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("simple bbs"),
        actions: <Widget> [
          IconButton(
            onPressed: () { Navigator.pushNamed(context, '/post');},
            icon: const Icon(Icons.edit)
          ),
        ],
      ),
      body: const Center(
        child: Text("ここに投稿が表示されます。"),
      ),
    );
  }
}

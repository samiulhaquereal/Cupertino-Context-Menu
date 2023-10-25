import 'package:flutter/cupertino.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            child: Image.network('https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png?20220706172052'),
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: Text('Action one'),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: Text('Action two'),
                onPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() async {
    counter++;
    var response = await get(
        'https://jsonplaceholder.typicode.com/photos/$counter' as Uri);
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

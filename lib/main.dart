import 'package:flutter/material.dart';

import 'models/item.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  var items = new List<Item>();
    MyApp(){
      items.add(Item(title: 'Cuscuz', done: false));
      items.add(Item(title: 'Café', done: false));
      items.add(Item(title: 'Leite', done: false));
      items.add(Item(title: 'Farinha de Trigo', done: false));
      items.add(Item(title: 'Açúcar', done: false));
      items.add(Item(title: 'Achocolatado', done: false));
      items.add(Item(title: 'Açúcar Mascavo', done: false));
      items.add(Item(title: 'Suco', done: false));
      items.add(Item(title: 'Ovos', done: false));
      items.add(Item(title: 'Sal', done: false));

    }
@override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.

   final _biggerFont = const TextStyle (fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Compras',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Compras'),
        ),
        body: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (BuildContext ctxt, int index){
            final item = widget.items[index];
            return CheckboxListTile(
              title: Text(item.title, style: _biggerFont),
              key: Key(item.title),
              value: item.done,
              onChanged: (value){
                setState(() {
                  item.done = value;
                });
              },
            );
          }
        ),
      ),
    );
  }
}


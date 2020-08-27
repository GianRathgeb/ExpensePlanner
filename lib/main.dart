import 'package:ExpensePlanner/widgets/user_transactions.dart';
import 'package:flutter/material.dart';
import './widgets/new_transactions.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              elevation: 5,
              color: Colors.blue,
              child: Text("CHART"),
            ),
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}

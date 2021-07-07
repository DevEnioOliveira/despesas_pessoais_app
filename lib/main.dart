import 'package:despesas/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transaction = [
    Transaction(
        id: '1', title: 'Caneca Rock', value: 30.50, date: DateTime.now()),
    Transaction(
        id: '2', title: 'Camisa Rock', value: 130.50, date: DateTime.now())
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
        centerTitle: true,
        backgroundColor: Colors.green[500],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              elevation: 7,
              child: Text('Gráfico'),
            ),
          ),
          Card(
            child: Text('Transações'),
          )
        ],
      ),
    );
  }
}

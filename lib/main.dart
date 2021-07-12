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
        id: '2', title: 'Camisa Rock', value: 130.50, date: DateTime.now()),
    Transaction(
        id: '3', title: 'Caneta Rock', value: 200.40, date: DateTime.now()),
    Transaction(id: '4', title: 'Boné Rock', value: 40.40, date: DateTime.now())
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
          Column(
            children: <Widget>[
              ..._transaction.map((transaction) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          transaction.value.toString(),
                          style: TextStyle(
                              color: Colors.green[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.green[600], width: 2)),
                        padding: EdgeInsets.all(12),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaction.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            transaction.date.toString(),
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                );
              })
            ],
          )
        ],
      ),
    );
  }
}

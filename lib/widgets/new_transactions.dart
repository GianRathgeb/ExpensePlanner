import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titelController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titelController,
              //onChanged: (val) => titleInput = val,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              //onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: () {
                addTx(
                  titelController.text,
                  double.parse(amountController.text),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

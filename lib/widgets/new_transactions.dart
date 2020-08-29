import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titelController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titelController.text;
    final enteredAMount = double.parse(amountController.text);
    if (enteredTitle.isEmpty || enteredAMount <= 0){
      return;
    }
    widget.addTx(
      titelController.text,
      double.parse(amountController.text),
    );

    Navigator.of(context).pop();
  }

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
              onSubmitted: (_) => submitData(),
              //onChanged: (val) => titleInput = val,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              // Keyboard for IOs: TextInputType.numberWithOptions(decimal:true)
              //onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: submitData,
            )
          ],
        ),
      ),
    );
  }
}

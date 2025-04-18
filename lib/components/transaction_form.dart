import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  TransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Título'),
                  controller: titleController,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Valor (R\$)'),
                  controller: valueController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      child: Text('Nova transação'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.purple,
                      ),
                      onPressed: () {
                        print(titleController.text);
                        print(valueController.text);
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
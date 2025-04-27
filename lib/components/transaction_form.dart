import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit, {super.key});

  _onSubmitForm() {
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;
    onSubmit(title, value);

    if (title.isEmpty || value <= 0) {
      return;
    }
    onSubmit(title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Título'),
            controller: titleController,
            onSubmitted: (_) => _onSubmitForm(),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Valor (R\$)'),
            controller: valueController,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            onSubmitted: (_) => _onSubmitForm(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(foregroundColor: Colors.purple),
                onPressed: _onSubmitForm,
                child: Text('Nova transação'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

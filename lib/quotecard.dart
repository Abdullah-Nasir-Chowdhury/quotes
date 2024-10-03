import 'package:flutter/material.dart';
import 'quote.dart';
import 'main.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback delete;
  QuoteCard( {required this.quote, required this.delete} );

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0,16.0,16.0,16.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  quote.text,
                  style: TextStyle(color: Colors.grey[600], fontSize: 16.0,),
                ),
                const SizedBox(height: 8.0),
                Text(
                  quote.author,
                  style: const TextStyle(color: Colors.amber, fontSize: 12.0),
                ),
                const SizedBox(height: 8.0),
                TextButton.icon(onPressed: delete, label: Text('Delete this quote'), icon: Icon(Icons.delete),)
              ]
          ),
        )
    );
  }
}


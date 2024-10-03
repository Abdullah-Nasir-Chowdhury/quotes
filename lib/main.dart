import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotecard.dart';

void main() => runApp(MaterialApp(
 home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes_ = [
    'Be yourself, everyone else is already taken.',
    'I have nothing to declare except my genius.',
    'Scoring a hatrick and losing feels better than winning 4-3 by having someone else score.',
    'In order to win, I will change myself as many times as I have to.'
  ];

  List<Quote> quotes = [
    Quote(text: 'Be yourself, everyone else is already taken.',
        author: 'Oscar Wilde'),
    Quote(text: 'I have nothing to declare except my genius.',
        author: 'Wilde Oscar'),
    Quote(
        text: 'Scoring a hatrick and losing feels better than winning 4-3 by having someone else score.',
        author: 'Noel Noa'),
    Quote(
        text: 'In order to win, I will change myself as many times as I have to.',
        author: 'Isagi Yoichi'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey[200],
     appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Awesome Quotes',
        style: TextStyle(color: Colors.white,)
      ),
      backgroundColor: Colors.redAccent[200],
     ),

    body: Column(
      // children: quotes.map((quote) {return Text(quote);}).toList(),
      // children: quotes_.map((quotes_) => Text(quotes_)).toList(),
      // children: quotes.map((quotes) => Text('${quotes.text} - ${quotes.author}')).toList(),
      children: quotes.map((quote)=>QuoteCard(
          quote:quote,
          delete: (){
            setState((){
            quotes.remove(quote);
            });
          }
      )).toList(),
    )
    );
  }
}
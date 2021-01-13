import 'package:flutter/material.dart';
import 'quotes.dart';

void main() {
  runApp(MaterialApp(
    home:QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Steve Cuoco',text: 'You are not here for someone else’s approval. '
        'You are here to bend the unimaginable, and form the impossible' ),
    Quote(author: 'Jodi Picoult',text: 'You can always edit a bad page. You '
        'can’t edit a blank page'),
    Quote(author: 'Winston Churchill', text: 'The Pessimist Sees Difficulty In '
        'Every Opportunity. The Optimist Sees Opportunity In Every Difficulty')
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}


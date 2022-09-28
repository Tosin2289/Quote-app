import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: quotelist(),
      debugShowCheckedModeBanner: false,
    ));

class quotelist extends StatefulWidget {
  quotelist({Key? key}) : super(key: key);

  @override
  State<quotelist> createState() => _quotelistState();
}

class _quotelistState extends State<quotelist> {
  List<Quote> quotes = [
    Quote(
        author: '-Mike',
        text:
            'You do not have plans for life because life has a differnt plan for you'),
    Quote(
        author: '-Bill Gates',
        text:
            'The moment you compare yourself with others then you devalue yourself'),
    Quote(
        author: '-Mike',
        text:
            'Do not let people achivement get the best of rather it should motivate you'),
    Quote(
        author: '-Elon musk',
        text:
            'Do not confuse schooling with education i did not go to school but the people who did are working under me'),
    Quote(author: '-Bill Gates', text: 'Patience is a key element of sucess'),
    Quote(
        author: '-Bill Gates',
        text: 'To win big,you sometimes have to take big risks'),
    Quote(
        author: '-Elon Musk',
        text: 'If you cannot handle stress you cannot handle sucess'),
    Quote(
        author: '-Mark Zukerburg',
        text:
            'Move fast and break things. Unless you are breaking stuff, you are not moving fast enough'),
    Quote(
        author: '-Mark Zukerburg',
        text: 'The biggest risk is not taking any risk'),
    Quote(
        author: '-Mark Zukerburg',
        text:
            "People don't care about what you say, they care about what you build"),
    Quote(
        author: '-Bill Gates',
        text:
            'I choose a lazy person to do a hard job. Because a lazy person will find an easy way to do it.'),
    Quote(
        author: '-Bill Gates',
        text:
            'Your most unhappy customers are your greatest source of learning'),
    Quote(
        author: '-Elon Musk',
        text:
            "It's OK to have your eggs in one basket as long as you control what happens to that basket"),
    Quote(
        author: '-Elon Musk',
        text:
            "Persistence is very important. You should not give up unless you are forced to give up"),
    Quote(
        author: '-Jeff Bezoz',
        text:
            'One of the only ways to get out of a tight box is to invent your way out'),
    Quote(
        author: '-Jeff Bezos',
        text:
            "Life's too short to hang out with people who aren't resourceful"),
    Quote(
        author: '-Jack ma', text: "A good boss is better than a good company"),
    Quote(
        author: '-Jack ma',
        text:
            "Players should never fight. A real businessman or entrepreneur has no enemies. Once he understands this, the sky's the limit"),
    Quote(
        author: '-Warran buffet',
        text:
            "If you don't find a way to make money when you are asleep then you will  work till you die"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        title: Text('Motivational Quotes [Billoniara edition]'),
        centerTitle: true,
        backgroundColor: Colors.green[200],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes.map((quote) => quotecard(quote: quote)).toList(),
        ),
      ),
    );
  }
}

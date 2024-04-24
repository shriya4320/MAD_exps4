import 'package:flutter/material.dart';

void main() {
  runApp(CardListView());
}

class CardListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card List View',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card List View'),
        ),
        body: ListView.builder(
          itemCount: 10, // Change this to the number of items you have
          itemBuilder: (context, index) {
            return CardItem(index: index);
          },
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final int index;

  const CardItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 4.0,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            (index + 1).toString(), // Just for demonstration
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        title: Text('Item ${index + 1}'),
        subtitle: Text('Description of item ${index + 1}'),
        onTap: () {
          // Add your action here when the card is tapped
          print('Tapped on item ${index + 1}');
        },
      ),
    );
  }
}

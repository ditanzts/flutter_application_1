import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu Minuman'),
        ),
        body: ListView(
          children: <Widget>[
             PlayerCard(
              playerName: 'Es Blewah',
              playerCountry: '4.000',
              playerClub: 'Varian Jumbo dan Medium',
              rating: 5, // Es Blewah rating set to 5 stars
              playerImage: AssetImage('images/es_blewah.jpg'),
            ),
            PlayerCard(
              playerName: 'Es Buah',
              playerCountry: '5000',
              playerClub: 'Buah Nangka, Buah Melon',
              rating: 4, // Es Buah rating set to 4 stars
              playerImage: AssetImage('images/es_buah.jpg'),
            ),
            PlayerCard(
              playerName: 'Es Krim',
              playerCountry: '7000',
              playerClub: 'Rasa Vanila, Coklat, Stroberi',
              rating: 4, // Es Krim rating set to 4 stars
              playerImage: AssetImage('images/es_krim.jpg'),
            ),
            PlayerCard(
              playerName: 'Es Teler',
              playerCountry: '6000',
              playerClub: 'Varian Jumbo dan Medium',
              rating: 5, // Es Teler rating set to 5 stars
              playerImage: AssetImage('images/es_teler.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  final String playerName;
  final String playerCountry;
  final String playerClub;
  final int rating;
  final ImageProvider playerImage;

  PlayerCard({
    required this.playerName,
    required this.playerCountry,
    required this.playerClub,
    required this.rating,
    required this.playerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: playerImage,
              radius: 30.0,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(playerName, style: TextStyle(fontSize: 20.0)),
                  Text(playerCountry),
                  Text(playerClub),
                  Row(
                    children: List.generate( rating, (index) {
                      return Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: index < rating ? Colors.amber : Colors.grey,
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
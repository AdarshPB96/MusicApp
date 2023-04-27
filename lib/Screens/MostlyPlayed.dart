import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:music_application_1/widget/functions.dart';

class MostlyPlayed extends StatelessWidget {
  const MostlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text('Mostly Played'),
          centerTitle: true,
    
          ),
      body: Column(
        children: [
          Expanded(
            child: SongsList(title: const [
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottama',
              'Moongil Thottam',
            ], subtitle: [
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
            ], images: [
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg'
            ]),
          ),
        ],
      ),
    );
  }
}

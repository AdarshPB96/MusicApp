import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:music_application_1/widget/functions.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Search',
          ),
          centerTitle: true,
     
          ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Find your music',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
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

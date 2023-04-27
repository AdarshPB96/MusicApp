import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:music_application_1/widget/functions.dart';

class AddPlaylistScreen extends StatelessWidget {
  const AddPlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Playlist'),
          centerTitle: true,
       
        ),
        body: Playlist(),
    );
  }
}

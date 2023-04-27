import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
             appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Share"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(
             "Love using Pulse Music Spread the word and share it with your friends and family! ,it's the perfect tool to make your life easier. \n Share the app through social media, messaging, or email and let others experience the benefits too. Thank you for helping us grow and reach more people!",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
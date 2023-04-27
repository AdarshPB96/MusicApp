import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Tearms And Conditions"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(
              'By downloading, installing, or using the app, you agree to be bound by these Terms and Conditions.',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
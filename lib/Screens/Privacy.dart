import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("privacy"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(
              'A transparent and complete Privacy Policy agreement, \n which explains exactly what information a company collects and how it uses that information, \n inspires trust in a business.',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}

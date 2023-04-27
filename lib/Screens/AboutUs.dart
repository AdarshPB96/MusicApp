import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("About Us"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            child: Text(
          'Welcome to Pulse Music, a revolutionary new way to the working of the app. We\'re passionate about helping people to listen the music which they .\n\nOur team of developers, designers, and product experts have worked tirelessly to create an app that\'s both user-friendly and packed with useful features. Our mission is to provide an easy-to-use platform that helps you listen the music you love most.\n\nWe understand that solve the problem to identify the songs which you like, and we wanted to create an app that could help you solve it. That\'s why we\'ve designed [Your App Name] to be intuitive and user-friendly, so you can get started right away.\n\nWe believe in providing excellent customer support, and our team is always here to help if you have any questions or run into any issues. We value your feedback, and we\'re constantly working to improve our app based on your suggestions.\n\nThank you for choosing Pulse Music. We hope you enjoy using our app and that it helps you [insert the main goal or benefit of your app] in your daily life.',
          style: TextStyle(fontSize: 16, color: Colors.white),
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}

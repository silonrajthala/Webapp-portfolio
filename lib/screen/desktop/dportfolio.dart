import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DesktopPortfolio extends StatefulWidget {
  const DesktopPortfolio({Key? key}) : super(key: key);

  @override
  State<DesktopPortfolio> createState() => _DesktopPortfolioState();
}

class _DesktopPortfolioState extends State<DesktopPortfolio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This page under development')
      // body: ListView(
      //   children: [
      //     Container(
      //       child: Column(
      //         children: [
      //           Text('1. Desktop App (CIMS)'),
      //           Text('Here are a few screenshots of the application'),
      //           Container(
      //             width: 500,
      //               height: 500,
      //               child: Text('photo haru')),
      //         ],
      //       ),
      //     ),
      //     Container(
      //       child: Column(
      //         children: [
      //           Text('2. Mobile App (CIMS)'),
      //           Text('Here are a few screenshots of the mobile application'),
      //           // Placeholder content for Mobile App images or information
      //           // Add your content here related to the Mobile App
      //           // For example:
      //           // Image.network('https://via.placeholder.com/150'), // Placeholder image
      //           Text('Placeholder description for mobile app'),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

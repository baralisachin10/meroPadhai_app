import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailsPage extends StatelessWidget {
  final String details;
  final String imageUrl;
  DetailsPage({required this.details, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(
              // margin: EdgeInsets.only(top: 20),
              height: 250,
              width: double.infinity,
              // color: Colors.grey,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Html(data: details)
          ]),
        ),
      ),
    );
  }
}

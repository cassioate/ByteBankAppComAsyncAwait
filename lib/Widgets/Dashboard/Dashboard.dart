import 'package:bytebank/Components/Buttons/ContactsButton.dart';
import 'package:bytebank/Components/ImageBytebank/ImageBytebank.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dash'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ImageBytebank(),
          ContactsButton(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ImageBytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset('./lib/assets/bytebank_logo.png'),
    );
  }
}

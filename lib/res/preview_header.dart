import 'package:flutter/material.dart';

class PreviewHeader extends StatelessWidget {
  final String? title;
  final String? text;
  PreviewHeader({
    Key? key,
    this.title,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to this app'),
      ),
      body: const Column(
        children: [
          Text(
            'title',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

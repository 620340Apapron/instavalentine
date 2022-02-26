import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Map<String, Object>> postsList = [
    {
      'name': 'Raksami',
      'image': Image.asset('assets/images/'),
      'text': 'HappyValentine'
    },
    {
      'name': 'Marisa',
      'image': Image.asset('assets/images/'),
      'text': 'Valentine Day'
    },
    {
      'name': 'Jitdapa',
      'image': Image.asset('assets/images/'),
      'text': 'Happy Love Day'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('InstaValentine'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: postsList.map((item) {
            return Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(item['name']),
                    Row(
                      children: [Text(item['image']), Text(item['text'])],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ));
  }
}

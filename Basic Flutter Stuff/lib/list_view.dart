// list view & alert dialog
import 'package:flutter/material.dart';

import 'list_view_myshapes.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // dynamically create lists
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.pink[100],
            title: Text('Title'),
            content: Text('Content'),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: Text('OK'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('CANCEL'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // instagram stories
          Container(
            height: 150,
            padding: const EdgeInsets.all(5.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stories.length,
                itemBuilder: (context, index) {
                  return MyCircle(child: _stories[index]);
                }),
          ),

          // alert dialog button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: Colors.deepOrange,
              onPressed: _showDialog,
              child: Text('Show Dialog', style: TextStyle(fontSize: 30)),
            ),
          ),

          // instagram posts
          Expanded(
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    child: _posts[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

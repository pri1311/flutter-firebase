import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/details.dart';

class list extends StatefulWidget {
  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {
  var todos = [
    {
      "task": "task1",
      "description":
          "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting",
    },
    {
      "task": "task1",
      "description":
          "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting",
    },
    {
      "task": "task1",
      "description":
          "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting",
    },
    {
      "task": "task1",
      "description":
          "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting",
    },
    {
      "task": "task1",
      "description":
          "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting",
    },
  ];

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  void initState() {
    print(users);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(todos[index]["task"]),
          // When a user taps the ListTile, navigate to the DetailScreen.
          // Notice that you're not only creating a DetailScreen, you're
          // also passing the current todo to it.
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                    todos[index]["task"], todos[index]["description"]),
              ),
            );
          },
        );
      },
    );
  }
}

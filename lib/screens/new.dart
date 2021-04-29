import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class newTodo extends StatefulWidget {
  @override
  _newTodoState createState() => _newTodoState();
}

class _newTodoState extends State<newTodo> {
  String task = "";
  String description = "";
  CollectionReference users = FirebaseFirestore.instance.collection('tasks');
  Future<void> createTodos() {
    return users.add({
      'task': task,
      'description': description,
    }).then((value) => print("User Added"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Task Name",
              ),
              onChanged: (value) {
                task = value;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 3,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Task description",
              ),
              onChanged: (value) {
                description = value;
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: createTodos,
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  String description;
  String task;
  DetailScreen(this.task, this.description);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 45,
                left: 35,
                right: 35,
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 120,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        margin: EdgeInsets.all(5),
                        child: IconButton(
                          icon: Icon(
                            Icons.done_all,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        margin: EdgeInsets.all(5),
                        child: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

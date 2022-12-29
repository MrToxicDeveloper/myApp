import 'package:flutter/material.dart';
import 'package:allrounder/counterApp.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("All Rounder"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Counter();
                  },
                  child: Container(
                    color: Colors.black12,
                    height: 50,
                    width: 125,
                    alignment: Alignment.center,
                    child: Text("Counter App"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

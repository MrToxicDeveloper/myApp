import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text("Counter Application")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  border: Border.all(color: Colors.red, width: 1.5),
                ),
                alignment: Alignment.center,
                child: Text(
                  "$i",
                  style: TextStyle(
                    color: Colors.red.shade400,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      i++;
                    });
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red.shade100,
                      border: Border.all(color: Colors.red, width: 1.5),
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i--;
                    });
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red.shade100,
                      border: Border.all(color: Colors.red, width: 1.5),
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i *= 2;
                    });
                  },
                  child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red.shade100,
                        border: Border.all(color: Colors.red, width: 1.5),
                      ),
                      alignment: Alignment.center,
                      child: Text("2X")),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      i *= 3;
                    });
                  },
                  child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red.shade100,
                        border: Border.all(color: Colors.red, width: 1.5),
                      ),
                      alignment: Alignment.center,
                      child: Text("3X")),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i *= 4;
                    });
                  },
                  child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red.shade100,
                        border: Border.all(color: Colors.red, width: 1.5),
                      ),
                      alignment: Alignment.center,
                      child: Text("4X")),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i *= 5;
                    });
                  },
                  child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red.shade100,
                        border: Border.all(color: Colors.red, width: 1.5),
                      ),
                      alignment: Alignment.center,
                      child: Text("5X")),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                setState(() {
                  i = 1;
                });
              },
              child: Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    border: Border.all(color: Colors.red, width: 1.5),
                  ),
                  alignment: Alignment.center,
                  child: Text("Reset")),
            ),
          ],
        ),
      ),
    );
  }
}
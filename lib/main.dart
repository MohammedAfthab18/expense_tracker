import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(50, 50),
          child: AppBar(
            backgroundColor: Colors.purple,
            title : const Text(
            "Flutter ExpenseTracker",
            style: TextStyle(
              color: Color.fromARGB(255, 237, 205, 243),
            ),
          ),
        ),
        ),
        backgroundColor: Colors.white,
        body: const Center(
          child: Text(
            "Expense Tracker",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    ),
  );
}

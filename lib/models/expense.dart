import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';


final formatter = DateFormat.yMd();

// to generate  a unique id for each task when i click that button 
//i use uuid package to do the job for me 
const  uuid = Uuid();

enum Category { food , travel ,  leisure , work} // custom category 

const categoryIcons = {
  Category.food : Icons.lunch_dining,
  Category.travel : Icons.flight_takeoff,
  Category.leisure : Icons.movie,
  Category.work : Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
    
  }) : id = uuid.v4(); // uuid.v4() function is used to generate unique string id

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
  return formatter.format(date);
  }
  }


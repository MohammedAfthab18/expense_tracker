import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter Course",
      amount: 300,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "Cinema",
      amount: 150,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    //context is available globally due to flutter
    // wheneever i encounter the word "builder" add a function there ...
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(255, 169, 112, 180),
        title: const Text(
          'Flutter Expense Tracker',
          // style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          //Toolbar with the addButton => Row()
          const Text("The Chart"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'ExpensesStatistic_screen.dart';
import 'ExpensesTotal_screen.dart';

class DaysScreen extends StatelessWidget {
  DaysScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text(
          'Expense Tracker',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(children: [
        DayCard('1', 'Monday', 100, () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => ExpensesTotalScreen());
        }),
        DayCard('2', 'Tuesday', 200, () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => ExpensesTotalScreen());
        }),
        DayCard('3', 'Wednesday', 300, () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => ExpensesTotalScreen());
        }),
        DayCard('4', 'Thursday', 400, () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => ExpensesTotalScreen());
        }),
        DayCard('5', 'Friday', 500, () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => ExpensesTotalScreen());
        }),
        DayCard('6', 'Saturday', 600, () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => ExpensesTotalScreen());
        }),
        DayCard('7', 'Sunday', 700, () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => ExpensesTotalScreen());
        }),
        SizedBox(height: 40),
        Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Button('View Expenses Statistics', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExpensesStatisticsScreen()));
          }),
        ])),
      ]),
    );
  }

  ElevatedButton Button(String text, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.greenAccent,
        minimumSize: Size(50, 50),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Card DayCard(String number, String day, double expense, VoidCallback onTap) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.greenAccent,
          child: Text(
            number,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          day,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Expenses: \$$expense'),
        trailing: Icon(Icons.add),
        onTap: onTap,
      ),
    );
  }
}

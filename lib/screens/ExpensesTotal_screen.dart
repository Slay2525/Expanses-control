import 'package:flutter/material.dart';
import 'days_screen.dart';

class ExpensesTotalScreen extends StatefulWidget {
  @override
  _ExpensesTotalScreenState createState() => _ExpensesTotalScreenState();
}

class _ExpensesTotalScreenState extends State<ExpensesTotalScreen> {
  double expensesValue = 0;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = expensesValue.toString();
    _controller.addListener(_updateExpensesValue);
  }

  void _updateExpensesValue() {
    setState(() {
      expensesValue = double.tryParse(_controller.text) ?? 0.0;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(100),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: 'Enter Total Expenses',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Total Expenses: $expensesValue'),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaysScreen()),
                  );
                },
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

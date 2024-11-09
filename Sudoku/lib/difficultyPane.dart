import 'package:flutter/material.dart';
import 'package:sudoku/sudokuEasy.dart';
import 'package:sudoku/sudokuHard.dart';
import 'package:sudoku/sudokuMedium.dart';

class DifficultyPane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TITLE',
      home: Scaffold(
        backgroundColor: Color(0xFF061826),
        appBar: AppBar(
          backgroundColor: Color(0xff2196f3),
          title: Text(
            '',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select Difficulty',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SudokuEasy()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2196f3),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(400, 100),
                ),
                child: Text('EASY'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SudokuMed()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2196f3),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(400, 100),
                ),
                child: Text('MEDIUM'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SudokuHard()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2196f3),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(400, 100),
                ),
                child: Text('HARD'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

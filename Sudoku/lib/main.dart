import 'package:flutter/material.dart';
import 'package:sudoku/difficultyPane.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainMenu(),
  ));
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      backgroundColor:
          Color(0xFF061826), // Set the background color of the Scaffold
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SUDOKU',
              style: TextStyle(
                color: Colors.white,
                fontSize: 80,
              ),
            ),
            SizedBox(
                height:
                    20), // Add some space between the Text and the ElevatedButton
            ElevatedButton(
              child: const Text(
                'Play',
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                fixedSize: MaterialStateProperty.all<Size>(Size(300, 80)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DifficultyPane()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

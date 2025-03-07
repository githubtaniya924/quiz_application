import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sudoku_solver_generator/sudoku_solver_generator.dart';

class SudokuScreen extends StatefulWidget {
  @override
  _SudokuScreenState createState() => _SudokuScreenState();
}

class _SudokuScreenState extends State<SudokuScreen> {
  List<List<int>> sudokuBoard = List.generate(9, (i) => List.filled(9, 0));
  List<List<int>> originalBoard = List.generate(9, (i) => List.filled(9, 0));
  Timer? timer;
  int secondsElapsed = 0;
  bool isPaused = false;

  @override
  void initState() {
    super.initState();
    generateSudokuBoard();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    timer?.cancel();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (!isPaused) {
        setState(() {
          secondsElapsed++;
        });
      }
    });
  }

  void togglePause() {
    setState(() {
      isPaused = !isPaused;
    });
  }

  void restartGame() {
    setState(() {
      sudokuBoard = List.generate(9, (i) => List.from(originalBoard));
      secondsElapsed = 0;
      isPaused = false;
      startTimer();
    });
  }

  void generateSudokuBoard() {
    var generator = SudokuGenerator(emptySquares: 40);
    List<List<int>> generatedBoard = generator.newSudoku;
    setState(() {
      sudokuBoard = List.generate(9, (i) => List.from(generatedBoard[i]));
      originalBoard = List.generate(9, (i) => List.from(generatedBoard[i]));
      secondsElapsed = 0;
    });
  }

  bool isValidMove(int row, int col, int number) {
    for (int i = 0; i < 9; i++) {
      if (sudokuBoard[row][i] == number || sudokuBoard[i][col] == number) {
        return false;
      }
    }
    int startRow = (row ~/ 3) * 3;
    int startCol = (col ~/ 3) * 3;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (sudokuBoard[startRow + i][startCol + j] == number) {
          return false;
        }
      }
    }
    return true;
  }

  void showNumberInputDialog(int row, int col) {
    if (originalBoard[row][col] != 0) return;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title:
            Text('Enter a number (1-9)', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF192655),
        content: TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Type a number",
            hintStyle: TextStyle(color: Colors.grey),
          ),
          onSubmitted: (value) {
            int? enteredNumber = int.tryParse(value);
            if (enteredNumber != null &&
                enteredNumber >= 1 &&
                enteredNumber <= 9) {
              if (isValidMove(row, col, enteredNumber)) {
                setState(() {
                  sudokuBoard[row][col] = enteredNumber;
                });
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('Invalid move!'),
                      duration: Duration(seconds: 2)),
                );
              }
            }
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sudoku Game', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF192655),
        actions: [
          IconButton(
            icon: Icon(isPaused ? Icons.play_arrow : Icons.pause,
                color: Colors.white),
            onPressed: togglePause,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Text('Time: $secondsElapsed seconds',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF192655),
                  fontWeight: FontWeight.bold)),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 9,
                childAspectRatio: 1,
              ),
              itemCount: 81,
              itemBuilder: (context, index) {
                int row = index ~/ 9;
                int col = index % 9;
                return GestureDetector(
                  onTap: () => showNumberInputDialog(row, col),
                  child: Container(
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF192655), width: 1.5),
                      borderRadius: BorderRadius.circular(5),
                      color: originalBoard[row][col] != 0
                          ? Colors.blueGrey[200]
                          : Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        sudokuBoard[row][col] == 0
                            ? ''
                            : sudokuBoard[row][col].toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF192655)),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF192655)),
                onPressed: generateSudokuBoard,
                child:
                    Text('New Puzzle', style: TextStyle(color: Colors.white)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF192655)),
                onPressed: restartGame,
                child: Text('Restart', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
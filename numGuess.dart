import 'dart:io';
import 'dart:math';

void main() {
  print("welcome to guess Number Game");

  Random rnd = Random();
  int numGuess = rnd.nextInt(50);

  print("Guess a Number between 0 and 50 :");
  var usrGuess;
  do {
    usrGuess = stdin.readLineSync();
    usrGuess = int.parse(usrGuess);
    if (usrGuess < numGuess) {
      print("Too Low");
    } else if (usrGuess > numGuess) {
      print("Too High");
    }
  } while (numGuess != usrGuess);

  print("great it's $numGuess");
}

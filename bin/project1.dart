import 'dart:io';
import 'dart:math';

void main() {
  String word = randomWord();
  instruction();
  hangMan(word);
}

String randomWord() {
  final random = Random();

  List<String> wordList = [
    'habit',
    'world',
    'house',
    'scholarship',
    'discussion',
    'ability',
    'abroad',
    'academic',
    'accept',
    'account',
    'achievement',
    'action',
    'active',
    'night',
    'morning',
    'amazing',
    'red',
    'blue',
    'yellow'
  ];
  String word = wordList[random.nextInt(wordList.length)];
  return word;
}

void hangMan(String word) {
  List clue = ('_' * word.length).split("");
  print(clue.join(" "));
  int count = 0;
  int attempts = word.length + 1;
  List history = [];
  int tries = 6;

  while (true) {
    count += 1;
    attempts -= 1;
    tries -= 1;

    stdout.write("\nPlease guess a letter: ");
    String choice = stdin.readLineSync()!.toLowerCase();
    if (history.contains(choice)) {
      print("\nYou already tried this letter!");
      attempts += 1;
    } else {
      history.add(choice);
    }

    // check the user’s choice
    if (choice == word) {
      print("\n Well Done ! Attemps: $count");
      break;
    } else if (choice == "EXIT") {
      print("\ngame over!\n");
      break;
    } else if (choice.length > 1) {
      attempts += 1;
      print("\n incorrect! Attemps left: $attempts");
      continue;
    } else if (attempts < 1 || tries >= 6) {
      print("\nAttemps left: $attempts. \nGame over!");
      print("\nThe word was: $word");
      break;
    }

    if (word.contains(choice)) {
      print(
          "well done , you guessed the correct letter. attemps left $attempts");
      for (int i = 0; i < word.length; i++) clue[i] = choice;
    } else {
      wrongTimes(tries);
    }
  }
  tries--;
  count++;
}

void instruction() {
  print("""Welcome to hang man game 
  You have 6 attempts to guess it correctly
  You can type the whole word anytime before attempts are over
  To quit the game type "exit"
  
  
  """);
}

void wrongTimes(int tries) {
  switch (tries) {
    case 6:
      print("\n+___");
      print("    |");
      print("    |");
      print("    |");
      print("   ===");
      break;
    case 5:
      print("\n+___");
      print("o   |");
      print("    |");
      print("    |");
      print("   ===");
      break;
    case 4:
      print("\n+___");
      print("o   |");
      print("|   |");
      print("    |");
      print("   ===");
      break;
    case 3:
      print("\n+___");
      print(" o  |");
      print("/|  |");
      print("    |");
      print("   ===");
      break;
    case 2:
      print("\n+___");
      print(" o   |");
      print("/|\\  |");
      print("    |");
      print("   ===");
      break;
    case 1:
      print("\n+___");
      print(" o   |");
      print("/|\\  |");
      print("/    |");
      print("   ===");
      break;
    case 0:
      print("\n+___");
      print(" o    |");
      print("/|\\   |");
      print("/  \\  |");
      print("     ===");
      break;
  }
}

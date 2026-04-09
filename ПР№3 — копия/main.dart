import 'dart:io';
import 'dart:math';
import 'package:characters/characters.dart';

enum Mood {
  happy,
  sad,
  excited,
  calm,
  angry,
  tired;
}

void main() {
  stdout.write("Введите ваше имя: ");
  String name = stdin.readLineSync()!;
  
  print("\nГенерируем случайное настроение...\n");
  
  List<Mood> moods = Mood.values;
  Random random = Random();
  Mood randomMood = moods[random.nextInt(moods.length)];
  
  String emoji;
  String description;
  int energy;
  
  switch (randomMood) {
    case Mood.happy:
      emoji = "\u{1F600}";
      description = "счастливый";
      energy = 10;
      break;
    case Mood.sad:
      emoji = "\u{1F622}";
      description = "грустный";
      energy = 3;
      break;
    case Mood.excited:
      emoji = "\u{1F60E}";
      description = "взволнованный";
      energy = 9;
      break;
    case Mood.calm:
      emoji = "\u{1F60C}";
      description = "спокойный";
      energy = 7;
      break;
    case Mood.angry:
      emoji = "\u{1F620}";
      description = "злой";
      energy = 2;
      break;
    case Mood.tired:
      emoji = "\u{1F634}";
      description = "уставший";
      energy = 4;
      break;
  }
  
  print("Привет, $name! Твое настроение: $emoji $description (энергия: $energy/10)");
  
  int unicodeValue = emoji.runes.first;
  print("\nЮникод вашего эмодзи: U+${unicodeValue.toRadixString(16).toUpperCase()}");
  
  // ВАРИАНТ 2: используем цикл для надежности
  bool showComplex = false;
  while (true) {
    stdout.write("\nХотите просмотреть сложные эмодзи? (да/нет): ");
    String? answer = stdin.readLineSync();
    if (answer == "да") {
      showComplex = true;
      break;
    } else if (answer == "нет") {
      break;
    } else {
      print('Пожалуйста, введите "да" или "нет"');
    }
  }
  
  if (showComplex) {
    stdout.write("\nВведите комбинацию эмодзи: ");
    String? complexEmoji = stdin.readLineSync();
    
    if (complexEmoji != null && complexEmoji.isNotEmpty) {
      print('\nАнализ строки "$complexEmoji":');
      print('- 16-битных единиц: ${complexEmoji.length}');
      print('- Кодовых точек: ${complexEmoji.runes.length}');
      print('- Реальных символов: ${complexEmoji.characters.length}');
      
      print("\nПодробный вывод юникода:");
      
      int i = 1;
      for (var rune in complexEmoji.runes) {
        print("Символ $i: ${String.fromCharCode(rune)} → U+${rune.toRadixString(16).toUpperCase()}");
        i++;
      }
    }
  }
  
  print("\nСпасибо, приходите снова!");
}
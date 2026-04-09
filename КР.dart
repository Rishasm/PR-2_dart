import 'dart:io';
final c1=6;
late String c2;
void main() {
    int a = 7;
    int b = 9;
    
    print(a + b);
    print(a - b);
    print(a % b);
    print(a % b);
    
    print(a ~/ b);
    print(a++);
    print(++a);
    print(b--);
    print(--b);
    print(a > b);
    print(a < b);
    print(a == b);
    print(a != b);

  c2="";
  String name = "Иван";
  int age = 17;

  print(name);
  print(age);

  String name2 = "WaaH";
  int age2 = 17;

  print(name2);
  print(age2);

  stdout.write("ghb");
  stdout.write("\n");
  stdout.writeln("hjkl");
  stdout.write("ghb");
  stdout.write("\n");

  print("Имя \$name");

  String? kol = "Иван";
  kol = null;

  String? c = stdin.readLineSync()!;
  var intToInt = int.parse(c);

   const pi = 3.14;
  // pi = 3.14;

  final c1;
  c1 = 5;

   late String name5;
  name5 = "ghjk";

  var value = "12345";
  int valueToInt = int.parse(value);
  double valueToDouble = double.parse(value);
  String valueToString = valueToDouble.toString();
  
  print(valueToString);
  print(valueToDouble);

  int? value2 = int.tryParse("234fg");
  double? value3 = double.tryParse("456");
  
  print(value3);
  print(value2);
  
  print(value3 is int);
  print(value3 is! int);

  print("введите цену товара");
  String tovar = stdin.readLineSync()!;
  int tovar2 = int.parse(tovar);

  print("введите скидку");
  String disc = stdin.readLineSync()!;
  int disc3 = int.parse(disc);

  double total = tovar2 - disc3 / 100;
  print(total);

  print("введите ширину");
  int width = int.parse(stdin.readLineSync()!);
  
  print("введите высоту");
  int height = int.parse(stdin.readLineSync()!);

  double P = (width + height) * 2;
  print(P);

  String s1 = "Николай";
  String s2 = 'Николай';
  String s3 = '''Николай''';
  String s4 = """Николай""";

  String s5 = "H" + s4.substring(1);
  print(s5);
  
  print(s5.length);
  
  print(s4.contains("w", 5));
  print(s5.toUpperCase());
  print(s5.toLowerCase());
  
  print(s5.indexOf("H"));
  
  String s7 = "провет";
  print(s7.lastIndexOf("T"));
  
  print(s7 + " " + s5);
  print(s7 * 10);
  
  print(s7.compareTo(s5));
  print(s5.compareTo(s7));
  print(s5.compareTo(s5));

  print(s7.trim());
  print(s7.trimRight());
  print(s7.trimLeft());
  
  print(s7.split(" "));
  print(s7.split("").join());
  
  print(s7.replaceAll("\n", "f"));
  print(s7.replaceFirst("\n", "f"));

  print(s5.isEmpty);
  print(s7.isEmpty);

  String s89 = "42";
  print(s89.padLeft(5, "0"));
}

//КЛАССНАЯ РАБОТА 20.02
import 'dart:io';
void main(List<String> arguments) {
  List <int> numbers = [1, 2, 3, 4, 5];
  print(numbers);
  List <String> d1 = ["фыва", "пролдж", "ячсмить"];
  List <dynamic> d2 = [1, "привет", 3.14, true];
  
  List <int?> g=List.filled(5, null);
  print(g);

  List<int?> g1 = List.generate(3, (int x) => x*x);
  print(g1);

  List <int> g2 = [1,2,3,4,5];
  List <int> g3 = List.from(g2);

  const List <int> f = [1,2,3,4,5];
  final a1=[3,4];

  print(numbers[0]);
  print(numbers[2]);
  
  print(numbers.first);
  print(numbers.last);

  print(numbers.length);
  print(numbers.isEmpty);
  print(numbers.isNotEmpty);
  print(numbers.contains(3));
  print(numbers.indexOf(4));
  print(numbers.sublist(1,4));
  print(numbers.reversed);
  // print(numbers.single); //если 1 элемент в списке, то выдаёт его, иначе ошибка

  numbers.add(6);
  print(numbers);
  numbers.addAll([1,4,8,8]);
  print(numbers);

  numbers.remove(1);
  print(numbers);

  numbers.insert(1,10);
  numbers.insertAll(2, [11,12]); //вставляет элементы по индексу
  print(numbers);


  numbers.removeAt(1); //удаление по индексу
  print(numbers);

  numbers.removeLast();
  print(numbers);

  numbers.removeRange(0, 2); //удаление диапазона элементов от 0 до 2 (не включая 2)
  print(numbers);

  List <int> e = [1,4,6,5,8];
  e.removeWhere( (item) => item % 2 == 0); //удаление всех чётных чисел
  print(e);

  e.clear(); //очищает весь список
  print(e);

  List <int> e1 = [1,4,6,5,8];
  e1[3]=6; //изменение элемента по индексу
  print(e1);

  e1.fillRange(1,3, 0); //заполняет диапазон элементов от 1 до 3 (не включая 3) значением 0
  print(e1);

  e1.replaceRange(1, 3, [5,7]); //заменяет диапазон элементов от 1 до 3 (не включая 3) на новые элементы
  print(e1);


  List <int> e2 = [1,4,6,5,8];
  print(e2.indexOf(4)); // поиск индекса элемента 4
  print(e2.lastIndexOf(5)); //поиск последнего индекса элемента
  print(e2.indexOf(-1)); //выдаст -1, так как элемента нет в списке

  print(e2.contains(-1)); //проверка наличия элемента в списке, T/F

  print(e2.every((x) => x > 0)); //проверка, что все элементы больше 0
  print(e2.any((x) => x > 7)); //проверка, что хотя бы один элемент больше 7

  print(e2.firstWhere((x) => x > 5)); //поиск первого элемента, который больше 5
  print(e2.lastWhere((x) => x < 5)); //поиск последнего элемента, который меньше 5

  List <int> e4 = [1,4,6,5,8];

  print(e4.sublist(1,4)); //создание нового списка из диапазона элементов от 1 до 4 (не включая 4)


  List<int> e3 = [1,4,6,5,8];

  List<int> d5=[...e3,3,4,5]; //создание нового списка из существующего и добавление новых элементов
  print(d5);

  e3.sort(); //сортировка списка по возрастанию
  print(e3);

  List<String> f1 = ["длинноеслово", "слово", "оченьоченьдлинноеслово", "короткое"];
  f1.sort((a,b) => a.length.compareTo(b.length)); //сортировка по длине строк
  print(f1);

  List<int> r = [1,2,3,4];
  var q=r.map((x) => x*2).toList(); //создание нового списка с элементами, умноженными на 2
  print(q);

  var k=r.where((x) => x>4).toList(); //создание нового списка с элементами больше 4
  print(k);

  var w2=r.skip(2); //создание нового списка, пропуская первые 2 элемента
  print(w2);

  var w3=r.take(4); //создание нового списка, содержащего первые 3 элемента
  print(w3);

  final numbers1 = [10,2,5,0.5];
  final sumnumbers1 = numbers1.reduce((a,b) => a+b); //вычисление суммы всех элементов в списке
  print(sumnumbers1);
}


void main() {
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  for (int i = 2; i <= 20; i += 2) {
    print(i);
  }

  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= 5; j++) {
      int a = i * j;
      print("$i * $j = $a");
    }
  }

  int sum = 0;
  
  for (int i = 1; i <= 5; sum += i, i++);
  
  print(sum);
}

  List<int> a = [1, 2, 3, 4];
  for (var i in a) {
    print(i);
  }

  for (int i = 1; i <= a.length; i++) {
    print(i);
  }

  String dart = "Dart";
  for (var str in dart.split("")) {
    print(str);
  }

  for (var g in dart.runes) {
    print(String.fromCharCode(g));
  }

  List<String> str = ["яблоко", "ананас", "арбуз"];
  for (var s in str.asMap().entries) {
    print("${s.key},${s.value}");
  }

  Set<String> set = {"яблоко", "ананас", "арбуз"};
  Map<String, int> map = {};
  for (var a in set) {
    map[a] = a.length;
  }
  print(map);
}


  int i = 1;
  while (i <= 5) {
    print(i);
    break;
  }

  int f = 1000;
  while (f > 0) {
    print(f);
    f ~/= 2;
  }

  int o = 1;
  do {
    print(o);
    o++;
  } while (o <= 5);

  List<int> list = [1, 2, 3];
  list.forEach(print);

  list.forEach((a) {
    print(a * 2);
  });
}

  int o = 1;
  do {
    print(o);
    o++;
  } while (o <= 5);

  List<int> list = [1, 2, 3];
  list.forEach(print);

  list.forEach((a) {
    print(a * 2);
  });

  List<String> names = ["Катя", "Мирослава", "Андрей"];
  names.forEach((name) => print("Привет $name !"));

  for (var l in list) {
    if (l == 2) {
      break;
    }
    print(l);
  }

  for (var l in list) {
    if (l == 2) {
      continue;
    }
    print(l);
  }

  list.forEach((a) {
    if (a == 2) {
      return;
    }
    print(a);
  });
}

  // Задача 1: Подсчет чётных и нечётных чисел
  int even = 0;
  int odd = 0;
  List<int> sp1 = [3, 5, 6, 7, 9];
  for (var a in sp1) {
    if (a % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  print(even);
  print(odd);

  // Задача 2: Сумма элементов до первого отрицательного числа
  int summa = 0;
  List<int> numbers = [5, 10, 3, -2, 7, 8];
  for (var i in numbers) {
    if (i > 0) {
      summa += i;
    } else {
      break;
    }
  }
  print(summa);

  // Задача 3: Среднее арифметическое оценок
  int summ = 0;
  List<int> grades = [5, 4, 3, 5, 4];
  for (var grade in grades) {
    summ += grade;
  }
  double cr = summ / grades.length;
  print(cr);
}

 // Список температур за неделю
  List<int> temp = [15, 18, 20, 22, 19, 17, 16];
  List<int> temp1 = [];
  
  for (var i in temp) {
    if (i > 18) {
      temp1.add(i);
    }
  }
  
  print(temp1);
}


//Классная работа 04.03.26
void main() {
  Map<int, String> map1 = {1: "Анна", 2: "Петр"};
  print(map1);

  map1[3] = "Даша";
  print(map1);

  map1.addAll({4: "jfjf", 5: "jdjd"});

  Map<int, String> map2 = Map.from(map1);

  Map<num, String> map3 = Map.of(map1);

  map1[3] = "Даша";
  print(map1);

  map1.addAll({4: "jfjf", 5: "jdjd"});
  print(map1);

  print(map1.remove(4));
  print(map1);

  map1.removeWhere((key, value) => value.startsWith("А"));
  print(map1);

  Map<int, String> map4 = Map.from(map1);

  map1[6] = "Dawa";
  print(map1);

  map1.addAll({4: "jfjjf", 5: "jdjd"});
  print(map1);

  print(map1.remove(4));
  print(map1);

  map1.removeWhere((key, value) => value.startsWith("A"));
  print(map1);

  print(map1);

  map1.update(2, (value) => value.toLowerCase());
  print(map1);

  map1.updateAll((key, value) => value.toLowerCase());
  print(map1);

  print(map1);

  map1.updateAll((key, value) => value.toUpperCase());
  print(map1);

  Map<String, int> map5 = {"jdj": 1, "jdjd": 3};
  Map<String, int> map6 = Map.unmodifiable(map5);

  Map<int, String> map7 = Map.from(map1);

  Map<String, int> map8 = {"jdj": 1, "jdjd": 3};
  Map<String, int> map9 = Map.unmodifiable(map8);

  map8.putIfAbsent("l", () => 100);
  print(map8);

  map8.putIfAbsent("l", () => 100);
  print(map8);

  int? age = map8["jdd"];
  print(age);
  int? map_name = map8["jdjd"];
  print(map_name);

  int? map_name2 = map8["jdjd"];
  print(map_name2);

  print(map8.entries);
  print(map8.values);
  print(map8.keys);
  print(map8.length);
  print(map8.isEmpty);

  print(map8.containsKey("l"));
  print(map8.containsValue(1));

  print(map8.values.map((element) => element * 2));
  print(map8.entries.first);
  print(map8.values.toList());

  for (var i in map8.values) {
    print(i);
  }

  for (var i in map8.keys) {
    print(i);
  }

  for (var i in map8.keys) {
    print(i);
  }

  map8.forEach((key, value) => print("$key, $value"));

  List<String> names = ["nddd", "1www", "fddd"];

  Map<String, int> len = Map.fromIterable(
    names,
    key: (element) => element,
    value: (element) => (element as String).length,
  );

  print(len);

  String text = "dart dart code flutter fl mob mob fl";
  var d = text.split(" ");
  Map<String, int> mapL = {};
  for (var i in d) {
    mapL.update(
      i,
      (a) => a + 1,
      ifAbsent: () => 1,
    );
  }
  print(mapL);

  var d1 = <String, int>{"hfh": 1};
  Map<int, List<dynamic>> mapList1 = {1: []};
  print(d1);
  print(mapList1);
}

//Классная работа 06.03.2026
void main() {
    var person =("Tanya",18);
    print(person);
    print(person.$1);
    print(person.$2);

    var person1 =("Nomak",age:5);
    
    print(person1 == person);

    ({int age,String name}) person2=(name:"Nastya",age:5);
    print(person2.age);
    print(person2.name);

    var person3=(name:"Tanya",18);
    print(person3.name);
    
    var p=(4,5);
    var (x,y)=p;
    print(x);
    print(y);

    var person7=f();
    print(person7);
    
    var person8=g();
    print(person8);
    
    a(("j",7));
    
    imenv((name: "Imen", age: 25));
}

(String,int) f(){
    return ("y",6);
}

({int x,int y}) g(){
    return (x: 3,y: 4);
}

void a((String,int) v){
    print(v.$1);
    print(v.$2);
}

void imenv(({String name, int age}) v){
    print(v.name);
    print(v.age);
}

void main() {
    List<int> a = [1,2,3];
    print(a.where((element) => element <= 2));
    print(a.map((elem) => elem * 2));
    
    const numbers = [1,2,3];
    final a1 = numbers.map((n) => n * 2);
    print(a1);
    
    print(a.reduce((a,b) => a + b));
    
    print(a1.fold(1, (a,b) => a * b));
    
    print(a1.any((element) => element == 2));
    print(a1.every((element) => element == 2));
    
    print(a.skip(3));
    print(a.take(3));
    
    var d = {1,2,3,4,5,6,7,8}
        .take(2)
        .skip(2)
        .where((e) => e <= 2);
    print(d);
    
    print(iter(0,5));
    
    Iterable<int> it = [1,4,5,5];
    for(var i in it){
        print(i);
    }
}

Iterable<int> iter(int start, int end) sync* {
    int a = start;
    while(a < end) {
        yield a;
        a++;
    }
}

//КР 20.03
```dart
// Iterable<int> iter(int start, int end) sync*{
//     int a=start;
//     while(a<end){
//     yield a;
//     a++;
//     }
// }

// тип имя_функции(){
// выполняемое выражение
//}
int global=45;
const global1="global";

void main() {
    user1("Николова", "Анастасия", "Александровна");
    user2("Николова", "Анастасия");
    user3("Николова", "Анастасия");
    printText("text:", "header: ", "5");
    printText("text: ", "g");
    h(4,5);
    h(6,7);
    print(div2(6,7));
    print(div5(6,7));
    print(div6(7,8));
}

void hello() {
    print("hello");
    String hello="hell";
    print(hello);
}

void hello()=>print("hello");

void sum(int a, int b) {
    print(a+b*3);
}

void sum1(int a, int b) {
    int c=a+b;
    print(c);
}

void printText({ required String text, String header="...", String? footer }) {
    print(header);
}

const a1=5;

void h(int a, int v) {
    final a1=a;
    final v1=v;
    print(a1);
    print(v1);
}

int div2(int a, int b) {
    return a*b;
}

int div3(int a, int b) {
    return a * b;
}

div5(int a, int b) {
    return a * b;
}

void user1(String name, String surname, String lastName) {
    print(name);
    print(surname);
    print(lastName);
}

void user2(String name, String surname, [String? lastName, int? age]) {
    if(lastName != null && age != null){
        print("$surname, $name, $lastName, $age");
    } else if(lastName != null){
        print("$surname, $name, $lastName");
    } else {
        print("$name $surname");
    }
}

void user3(String name, String surname, String lastName) {
    print("$surname $name $lastName");
}

void printText([String text="Нет текста", String header="Нет заголовка"]) {
    print(text);
    print(header);
}

void printfText([String text="Нет текста", String header="Нет заголовка"]) {
    print(text);
    print(header);
}

void printTxt(String text, [String? header]) {
    print(text);
    if(header != null) print(header);
}

void dif(int a, int b) {
    print(a-b);
}

void div(double a, double b) {
    if(b != 0) print(a/b);
}

void helllo() {
    print("hello");
    String hello="hell";
    print(hello);
}

void sum(int a, int b) {
    print(a+b);
}

void sum1(int a, int b) {
    int c=a+b;
    print(c);
}

void main() {
    hello();
    sum(4,5);
    sum1(3,4);
    dif(3,5);
    div(5,6);
    user1("Никонова","Анастасия","Александровна");
    user1("Никонова","Анастасия");
    user2("Никонова","Анастасия");
    user2("Никонова","Анчастия","Александровна",7);
    printfText();
    printfText(text:"f",header: "5");
    printfText(text: "g");
    h(4,5);
    h(6,7);
}

void main() {
    user1("Николова", "Анастасия");
    user2("Николова", "Анастасия", "Александровна", 7);
    printTxt("Hello, world!");
    printTxt("text: ", "g");
    h(4,5);
    h(6,7);
    print(div2(6,7));
    print(div5(6,7));
}

void main() {
    user1("Николова", "Анастасия", "Александровна");
    user2("Николова", "Анастасия");
    print(Txt("f: f", header: "5"));
    print(Txt("g"));
    h(4,5);
    h(6,7);
    div2(6,7);
}

void main() {
    user1("Никонова", "Анастасия", "Александровна");
    user2("Никонова", "Анастасия");
    user3("Никонова", "Анастасия");
    printText("text:", "header: ", "5");
    printText("text: ", "g");
    h(4,5);
    h(6,7);
    print(div2(6,7));
    print(div5(6,7));
    print(div6(7,8));
}

void main() {
    String local_main="local_main";
    if(true){
        int local_if=6;
        print(global);
        local_main="Gh";
        print(local_main);
        print(local_if);
    }
    print(local_main);
    print(global);
    hello();
}

void main() {
    int local_if=6;
    print(global);
    String local_main="Gh";
    print(local_main);
    print(local_if);
    print(local_main);
    print(global);
    helllo();
    hello();
    sum(4,5);
    sum1(3,4);
    dif(3,5);
    div(5,6);
    user("Никонова","Анастасия","Александровна");
}

void main() {
    var (a, b) {
        print(a * b);
    }
    user(String name, String surname, String lastName) {
        print(name);
        print(surname);
        print(lastName);
    }


(String name, String surname, [String? lastName]) {
        if (lastName != null) {
            print("$surname, $name, $lastName");
        } else {
            print("$name $surname");
        }
    }
}

void main() {
    printf("hello world");
    print(local_if);
    print(local_main);
    print(global);
    helllo();
    hello();
    sum(4,5);
}

void main() {
    hello();
    hello();
    sum(4,5);
    sum1(3,4);
}

void main() {
    helllo();
    hello();
}

void main() {
    print(local_main);
    print(local_if);
    print(local_main);
    print(global);
    helllo();
    hello();
    sum(4,5);
    sum1(3,4);
    dif(3,5);
    div(5,6);
    user("Никонова","Анастасия","Александровна");
    user1("Никонова", "Анастасия");
}

main() {
    sum(4,5);
    sum1(3,4);
    dif(3,5);
    div(5,6);
    user("Никонова", "Анастасия", "Александровна");
    user1("Никонова", "Анастасия");
}

void user(String name,String surname,String lastName){
    print(name);
    print(surname);
    print(lastName);
}

void user1(String name,String surname,[String? lastName]){
    if(lastName != null){
        print("$surname, $name, $lastName");
    } else {
        print("$name $surname");
    }
}

id dif(a,b){
    print(a-b);
}

(a,b){
    print(a*b);
}

id user1(String name,String surname,String lastName){
    print(name);
    print(surname);
    print(lastame);
}

void main() {
    hello();
    // print(hello);
    sum(4,5);
    sum1(3,4);
    div(5,6);
    user1("Николова", "Анастасия", "Александровна");
    user2("Николова", "Анастасия");
    user1("Николова", "Анастасия");
    user2("Николова", "Анастасия");
    printText("text:", "header: ", "5");
    printText("text: ", "g");
    h(4,5);
    h(6,7);
    print(div2(6,7));
    print(div5(6,7));
    print(div6(7,8));
    var f=sumDiv(4,5);
    print(f);
}

void hello() {
    print("hello");
    String hello="hell";
    print(hello);
}

void main() {
    h(6,7);
    print(div2(6,7));
    print(div5(6,7));
    print(div6(7,8));
    var f = sumDif(4,5);
    print(f);
    userAge(6);
    userAge(500);
    Function func=hello;
    print(func);
    func();
    func();
}

void hello() {
    print("hello");
    String hello="hell";
    print(hello);
}

void hello()=>print("hello");

void sum(int a,int b){
    print(a+b+3);
}

void main() {
    print(div2(6,7));
    print(div5(6,7));
    print(div6(7,8));
    var f=sumDif(4,5);
    print(f);
    userAge(6);
    userAge(500);
    Function func=hello;
    func();
    func();
}

void hello() {
    print("hello");
    String hello="hell";
    print(hello);
}

void sum(int a, int b){
    print(a+b*3);
}

void main() {
    printText("text:", "header: " + "5");
    printText("text: ", "g");
    h(4,5);
    h(6,7);
    print(div2(6,7));
    print(div5(6,7));
    print(div6(7,8));
    var f = sumDif(4,5);
    print(f);
    userAge(6);
    userAge(500);
    Function func=hello;
    func();
    func();
}

void hello() {
    print("hello");
    String hello="hell";
    print(hello);
}


Function func = calculate;

void main() {
  print(calculate(10, 5, "+"));
  print(calculate(10, 5, "-"));
  print(calculate(10, 5, "*"));
  print(calculate(10, 5, "/"));
  print(calculate(10, 0, "/"));
  print(calculate(10, 5, "%"));
}

calculate(double a, double b, String operation) {
  if (operation == "+") {
    return a + b;
  } else if (operation == "-") {
    return a - b;
  } else if (operation == "*") {
    return a * b;
  } else if (operation == "/") {
    if (b == 0) {
      return null;
    }
    return a / b;
  } else {
    return null;
  }
}




//КР 27.03
void main() {
    int Function(int,int) func = sum;
    print(func(4,5));
    operation(5, 6, (x,y)=>x*y);
    operation(5, 6, (x,y)=>x+y);
    operation(5, 6, (x,y)=>x-y);
    operation(5, 6, sum);
}

var counter = makeCounter();
print(counter());
print(counter());
print(counter());

printRes(add,7,8);
void d = void Function() > [];
var mult = Mult(5);
print(mult(6));

int sum(int a,int b)=> a+b;

void operation(int x,int y, int Function(int,int) f){
    int result = f(x,y);
    print(result);
}

Function makeCounter(){
    int count = 0;
    return (){
        count++;
        return count;
    };
}

typedef Op = int Function(int a,int b);


void printRes(Op oper,int x,int y){
    print(oper(x,y));
}

int add(int a,int b)=>a+b;

class Mult{
    final int g;

    Mult(this.g);

    int call(int value)=>g*value;

    void func(int n, void Function() f){
        for(int i=0; i<n; i++){
            f();
        }
    }
}

callback(()=>print("Конёк"));
var s = make(5);
print(s(7));
print(s(5));

void callback(void Function() j){
    print("Начинается работа функции");
    print("работа функции завершена");
}

int Function(int) make(int c){
    return (int x){
        return c * x;
    };
}

int rek(int n int m) {}
void callback(void Function() j){
    print("Начинается работа функции");
    print("работа функции завершена");
    j();
}

int Function(int) make(int c){
    return(int x){
    return c*x;
    };
}

int rek(int n,int m){
    if(m==0){
    return 1;
    }
    return n* rek(n,m-1);
}

String str(String word){
    if(word.isEmpty()){
    return "";
    }
    return str(word.substring(1))+word[0];
}







//КР 01.04
import 'dart:';
enum Status{
    processing,
    ready;
}

enum Day {
    mon,
    tue,
    wed,
    thu,
    fri,
    sat,
    sun
};

void statusShow(int status) {
    if (status == 1) {
        print("обработка заказа");
    } else if (status == 2) {
        print("выдача");
    }
}

void statusShow1(Status status) {
    if (status == Status.processing) {
        print("обработка заказа");
    } else if (status == Status.ready) {
        print("выдача");
    }
}

int main() {
    statusShow(1);
    statusShow1(Status.processing);
    
    Day today = Day.wed;
    
    switch (today) {
        case Day.mon:
            print("5 nap");
            break;
        case Day.tue:
            print("5 nap");
            break;
        case Day.wed:
            print("4 nap");
            break;
        default:
            print("5 nap");

for (var i in Status.values) {
    print(i);
    print(i.name);
    print(i.index);
  }
}

String s ="ABC";
print(s);
print(s.runes);
print(s.runes.first.toRadixString(16));

print(String.fromCharCode(65));

String smile="💋";
print(smile);
print(smile.length);

String family="👨🏻‍👩🏻‍👦🏻‍👦🏻";
print(family);
print(family.length);
print(family.runes.first.toRadixString(16));
String f="\u{1f468}";
print(f);
String f1="\u{1f467}";
print(f1);
String exhalingFace = '\u{1F62E}\u{200D}\u{1F4A8}';
print(exhalingFace);
String heartOnFire = '❤️\u{200D}🔥';
print(heartOnFire);
String vs="😤";
print(vs.runes);


enum Role {
  admin('admin', 1),
  user('user', 3),
  owner('product', 2);

  final String login;
  final int priority;

  const Role(this.login, this.priority);

      for (var i in Role.values) {
        print(i);
        print(i.name);
        print(i.index);
        print(i.login);
        print(i.priority);
  }
}

void statusShow(int status) {
    if (status == 1) {
        print("обработка заказа");
    } else if (status == 2) {
        print("выдача");
    }
}

void statusShow1(Status status) {
    if (status == Status.processing) {
        print("обработка заказа");
    } else if (status == Status.ready) {
        print("выдача");
    }
}

int main() {
    statusShow(1);
    statusShow1(Status.processing);
    return 0;
}
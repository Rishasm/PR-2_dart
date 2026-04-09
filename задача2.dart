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
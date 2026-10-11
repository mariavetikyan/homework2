Future<int> delayedValue(int value) async {
  await Future.delayed(Duration(milliseconds: 100));
  return value;
}

Future<int> sumValues(int a, int b) async {
  int first = await delayedValue(a);
  int second = await delayedValue(b);
  return first + second;
}

void main() async {
  int result = await sumValues(5, 7);
  print('gumary: $result');
}

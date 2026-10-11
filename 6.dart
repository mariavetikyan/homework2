Future<int> getNumber(int value) async {
  if (value <= 0) {
    throw Exception('tivy petq e lini drakan');
  }
  await Future.delayed(Duration(milliseconds: 100));
  return value;
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (error) {
    return 0;
  }
}

void main() async {
  print(await safeGetNumber(10));
  print(await safeGetNumber(-5));
  print(await safeGetNumber(0));
}

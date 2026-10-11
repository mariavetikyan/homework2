Future<String> runTask(String name, int milliseconds) async {
  await Future.delayed(Duration(milliseconds: milliseconds));
  return 'Task $name completed';
}

Future<List<String>> runTasks() async {
  Future<String> taskA = runTask('A', 100);
  Future<String> taskB = runTask('B', 50);
  Future<String> taskC = runTask('C', 150);

  return await Future.wait([taskA, taskB, taskC]);
}

void main() async {
  List<String> results = await runTasks();
  print(results);
}
// thank u for attention 

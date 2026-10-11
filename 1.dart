void main() {
  List<String> shoppingList = ['hac', 'kat', 'xndzor'];

  shoppingList.add('panir');
  shoppingList.insert(1, 'dzu');
  shoppingList.removeAt(2);
  shoppingList[0] = 'lavash';

  print('arajin apranqy: ${shoppingList.first}');
  print('verjin apranqy: ${shoppingList.last}');
  print('cucaky datark e?: ${shoppingList.isEmpty}');
  print('gnumneri cucak: $shoppingList');
}

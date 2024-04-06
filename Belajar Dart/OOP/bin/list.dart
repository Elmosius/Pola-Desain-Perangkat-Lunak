main(List<String> arguments) {
  List<int> myList = [];
  List<int> myList2 = [1, 2, 3];

  // akses list
  myList2[0] = 10;
  int e = myList2[0];
  print(e);

  // bisa pke for 1
  for (int i = 0; i < myList2.length; i++) {
    print(myList2[i]);
  }

  // cara 2
  for (int i in myList2) {
    print(i);
  }

  // cara 3
  myList2.forEach((i) {
    print(i);
  });

  // Cara untuk add ke list
  myList.add(10);
  myList.addAll(myList2);
  myList.insert(1, 20);
  myList.insertAll(3, [20, 39]);

  // cara untuk remove list
  myList.remove(20);
  myList.removeAt(0);
  myList.removeLast();

  // cara untuk mengecheck di list ada atau nda
  myList.contains(1);

  // cara sort
  myList2.sort();

  // cara untuk kalau di list ada doubke
  myList2.toSet();
}

void main() {
  print(mergsort([2, 15, 7, 3]));
}

mergsort(List list) {
  if (list.length <= 1) return list;

  int middleindex = (list.length / 2).floor();
  List leftlist = mergsort(list.sublist(0, middleindex));
  List rightlist = mergsort(list.sublist(middleindex));

  return merge(leftlist, rightlist);
}

merge(List list1, List list2) {
  List mergedList = [];
  int i = 0;
  int j = 0;

  while (i < list1[i] && j < list2[j]) {
    if (list1[i] < list2[j]) {
      mergedList.add(list1[i]);
      i++;
    } else {
      mergedList.add(list2[j]);
      j++;
    }
  }
}

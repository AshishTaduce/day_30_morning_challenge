// Challenge
// Matryoshka dolls are traditionally wooden dolls that can be nested by fitting
// smaller dolls into larger ones. Suppose arrays can be nested similarly,
// placing smaller arrays into larger ones, in the following sense:
//

//// Array A can be nested inside Array B if:
//// 1. min(array A) > min(array B)
//// 2. max(array A) < max(array B)

//// For example, if A = [2, 3, 9, 5] and B = [10, 2, 1], then A can be nested inside B, since:
////  - min(A) = 2 > 1 = min(B) and
////   - max(A) = 9 < 10 = max(B)
import 'dart:math';

bool checkDolls(List<int> doll1, List<int> doll2) {
  return doll1.reduce(min) > doll2.reduce(min) &&
      doll1.reduce(max) < doll2.reduce(max);
}
//  List minimum = [];
//  List maximum = [];
//  for(List<int> x in Dolls){
//    minimum.add(x.reduce(min));
//    maximum.add(x.reduce(max));
//  }
//  minimum.sort;
//  maximum.sort;

//  List flat = dolls.expand((i) => i).toList();
//
//  if(flat.length == flat.toSet().length){
//    return false;
//  }
bool Matroyshka(List<List<int>> dolls) {
  if (dolls.length == 1) return false;

  dolls.sort((a, b) => b.reduce(min).compareTo(a.reduce(min)));
  for (int i = 0; i < dolls.length - 1; i++) {
    if (!checkDolls(dolls[i], dolls[i + 1])) {
      return false;
    }
    ;
  }
  return true;
}

/// Create a function that returns true if every single sub-array inside an array
/// can be nested Matroyshka style, and false otherwise.
main() {
  print(Matroyshka([
    [8, 57],
    [4, 89],
    [15, 43]
  ]));
  print(Matroyshka([
    [1, 10, 6],
    [4, 8, 2],
    [5]
  ]));
  print(Matroyshka([
    [2],
    [3]
  ]));
}

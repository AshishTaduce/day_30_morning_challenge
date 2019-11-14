import 'package:test/test.dart';
import 'main.dart';

void main() {
  test("test case 1", () {
    expect(
        Matroyshka([
          [2, 3, 9, 5],
          [10, 2, 1]
        ]),
        true);
    expect(
        Matroyshka([
          [2, 3, 9, 5],
          [2, 2, 9]
        ]),
        false);
    expect(
        Matroyshka([
          [1, 10, 6],
          [4, 8, 2],
          [5]
        ]),
        true);
    expect(
        Matroyshka([
          [1, 10, 6],
          [4, 8, 2],
          [5]
        ]),
        true);
    expect(
        Matroyshka([
          [2],
          [3]
        ]),
        false);
    expect(
        Matroyshka([
          [2],
          [2]
        ]),
        false);
    expect(
        Matroyshka([
          [2, 1, 3],
          [2]
        ]),
        true);
    expect(
        Matroyshka([
          [2, 3, 9],
          [2, 3, 9]
        ]),
        false);
    expect(
        Matroyshka([
          [2, 9, 3],
          [2, 9]
        ]),
        false);
    expect(
        Matroyshka([
          [2, 9, 3]
        ]),
        false);
    expect(
        Matroyshka([
          [8, 10],
          [7, 11],
          [6, 12],
          [5, 13]
        ]),
        true);
    expect(
        Matroyshka([
          [1],
          [8],
          [2]
        ]),
        false);
    expect(
        Matroyshka([
          [4, 8, 2],
          [8],
        ]),
        false);
    expect(
        Matroyshka([
          [1, 10, 6],
          [4, 8, 2],
          [8],
        ]),
        false);
  });
}
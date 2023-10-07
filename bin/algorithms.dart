import 'binary_search/binary_search.dart';

void main() {
  final solution = Solution();
  // print(solution.binarySearch([-1, 0, 3, 5, 9, 12], 9));
  print(solution.removeElement([3, 2, 2, 3], 3));
  print(solution.removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2));
  print(solution.removeElement([3, 3], 3));
}

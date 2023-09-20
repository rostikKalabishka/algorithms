class Solution {
  int binarySearch(List<int> sortedList, int target) {
    int low = 0;
    int high = sortedList.length - 1;
    while (low <= high) {
      int mid = (low + high);
      if (sortedList[mid] == target) {
        return mid;
      } else if (sortedList[mid] < target) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
    return -1;
  }
}

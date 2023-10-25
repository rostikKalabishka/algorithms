import 'dart:math';

class Solution {
  int binarySearch(List<int> nums, int target) {
    nums.sort();
    int left = 0;
    int right = nums.length - 1;

    while (left <= right) {
      int medium = ((left + right) ~/ 2);
      if (nums[medium] == target) {
        return medium;
      } else if (nums[medium] > target) {
        right = medium - 1;
      } else {
        left = medium + 1;
      }
    }

    return -1;
  }

  int removeElement(List<int> nums, int val) {
    for (var i = 0; i <= nums.length; i++) {
      nums.remove(val);
    }

    return nums.length;
  }
  // int removeElement(List<int> nums, int val) {
  //   int t = 0;
  //   for (var i = 0; i < nums.length; i++) {
  //     if (nums[i] != val) {
  //       nums[t] = nums[i];
  //       t++;
  //     }
  //   }
  //   return t;
  // }

  // int missingNumber(List<int> nums) {
  //   int value = 0;
  //   for (int i = 0; i <= nums.length; i++) {
  //     if (!nums.contains(i)) {
  //       value = i;
  //     }
  //   }
  //   return value;
  // }

// bool containsDuplicate(List<int> nums) {
//       Set<int> uniqueNums = Set();

//       for(int number in nums){
//           if(uniqueNums.contains(number)){
//               return true;
//           }
//           else{
//               uniqueNums.add(number);
//           }
//       }
//       return false;
//   }

  bool containsDuplicate(List<int> nums) => nums.toSet().length != nums.length;

  List<int> findDisappearedNumbers(List<int> nums) {
    List<int> value = [];
    for (int i = 1; i <= nums.length; i++) {
      if (!nums.contains(i)) {
        value.add(i);
      }
    }
    return value;
  }

  List<int> plusOne(List<int> digits) =>
      ((BigInt.parse(digits.join()) + BigInt.one).toString().split(''))
          .map((e) => int.parse(e))
          .toList();

  bool isPalindrome(String s) {
    var regExp = RegExp(r'[^A-Za-z0-9]');
    var b = s.replaceAll(regExp, '').toLowerCase().trim();
    if (b.isEmpty) return true;
    var nes = b.split('').reversed.join();

    return nes == b;
  }

  int removeDuplicates(List<int> nums) {
    final set = nums.toSet().toList();
    nums.length = 0;
    nums.addAll(set);
    return nums.length;
  }

  findTheDifference(String s, String t) {
    int charSumS = 0;
    int charSumT = 0;

    for (int i = 0; i < s.length; i++) {
      charSumS += s.codeUnitAt(i);
    }

    for (int i = 0; i < t.length; i++) {
      charSumT += t.codeUnitAt(i);
    }

    int diff = charSumT - charSumS;

    return String.fromCharCode(diff);
  }

//bad solution
  int searchInsert(List<int> nums, int target) {
    int res = 0;

    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        res = i;
        return res;
      } else {
        nums.add(target);
        nums.sort();
        if (nums[i] == target) {
          res = i;
          return i;
        }
      }
    }
    return res;
  }
  //   print(solution.searchInsertV2([1, 3, 5, 6], 5));
  // print(solution.searchInsertV2([1, 3, 5, 6], 2));
  // print(solution.searchInsertV2([1, 3, 5, 6], 7));

  int searchInsertV2(List<int> nums, int target) {
    int low = 0;
    int high = nums.length - 1;
    while (low <= high) {
      var midle = (low + high) ~/ 2;
      if (nums[midle] == target) {
        return midle;
      } else if (nums[midle] < target) {
        low = midle + 1;
      } else {
        high = midle - 1;
      }
    }

    return low;
  }

  List<int> intersect(List<int> nums1, List<int> nums2) {
    List<int> res = [];
    for (int num2 in nums2) {
      if (nums1.contains(num2)) {
        res.add(num2);
        nums1.remove(num2);
      }
    }
    return res;
  }

  // String reverseWords(String s) {
  //   s = s.trim();
  //   s = s.replaceAll(RegExp('[ ]+'), ' ');

  //   return s.split(' ').reversed.join(' ');
  // }

  String finalString(String s) {
    List<String> x = [];
    for (var i = 0; i < s.length; i++) {
      if (s[i] == 'i') {
        x = x.reversed.toList();
      } else {
        x.add(s[i]);
      }
    }
    return x.join();
  }

  int maxNumber(List<int> arr) {
    int res = 0;

    for (var i = 0; i < arr.length; i++) {
      res = max(res, arr[i]);
    }
    return res;
  }

  int maxNumber2(List<int> arr) {
    // int maxNumber = -2147483648;
    int maxNumber = 2147483647;
    for (var n in arr) {
      maxNumber = min(n, maxNumber);
    }
    return maxNumber;
  }

  double floatNumber(List<int> arr) {
    var res = 0;
    for (var n in arr) {
      res += n;
    }
    return (res / arr.length);
  }

  moveZeroes(List<int> nums) {
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 0) {
        nums.remove(0);
        nums.add(0);
      }
    }
  }

  int findDuplicate(List<int> nums) {
    Set res2 = {};
    for (var i = 0; i < nums.length; i++) {
      if (res2.contains(nums[i])) {
        return nums[i];
      } else {
        res2.add(nums[i]);
      }
    }
    return 0;
  }

  // bool canBeEqual(List<int> target, List<int> arr) {
  //   if (target.length != arr.length) return false;
  //   for (var i = 0; i < target.length; i++) {
  //     if (!target.contains(arr[i])) {
  //       return false;
  //     }
  //   }
  //   return true;
  // }

  // bool canBeEqual(List<int> target, List<int> arr) {
  //   target.sort();
  //   arr.sort();
  //   return target.toString() == arr.toString();
  // }

  bool canBeEqual(List<int> target, List<int> arr) {
    if (target.length != arr.length) return false;
    target.sort();
    arr.sort();
    for (var i = 0; i < target.length; i++) {
      if (target[i] != arr[i]) {
        return false;
      }
    }
    return true;
  }

  List<int> twoSum(List<int> nums, int target) {
    List<int> resArr = [];

    for (var i = 0; i < nums.length; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          resArr = [i, j];
        }
      }
    }
    return resArr;
  }

  List<int> searchRange(List<int> nums, int target) {
    if (nums.isEmpty) {
      return [-1, -1];
    }

    int firstIndex = nums.indexOf(target);

    int lastIndex = nums.lastIndexOf(target);
    return [firstIndex, lastIndex];
  }

  reverseWords(String s) {
    var arrString = s.split(' ');
    var res = (arrString.map((e) => e.split('').reversed.join())).join(' ');
    return res;
  }

  int reverse(int x) {
    var arrX = x.toString().split('');
    var res = 0;
    for (var i = 0; i < arrX.length; i++) {
      if (arrX[i] == '-') {
        arrX.remove('-');
        arrX.add('-');
      }
      if (arrX.last == '0' && arrX.length > 2) {
        arrX.removeLast();
      }
    }
    res = int.parse(((arrX.reversed.join())));
    if (2147483647 < res || res < -2147483648) {
      return 0;
    }
    return res;
  }

  myAtoi(String s) {
    // s = s.trim();
    // if (s.isEmpty) return 0;
    // return int.parse(s.replaceAll(RegExp(r'-?[^-0-9]'), ''));
    s = s.trimLeft();
    if (s.startsWith(RegExp(r'[a-zA-z]'), 0)) {
      return 0;
    }
    if (s.isEmpty) return 0;
    s = s.replaceAll(RegExp(r'-?[^-0-9]'), '');
    if (s.isEmpty) return 0;
    int rs = int.parse(s);
    if (rs <= -2147483648) {
      return -2147483648;
    } else if (rs > 2147483647) {
      return 2147483647;
    }
    return rs;
  }

  // void merge(List<int> nums1, int m, List<int> nums2, int n) {}

  // List<int> intersection(List<int> nums1, List<int> nums2) {
  //   var a = nums1.toSet().toList();
  //   var b = nums2.toSet().toList();
  //   List<int> res = [];
  //   for (var i = 0; i < b.length; i++) {
  //     if (a.contains(b[i])) {
  //       res.add(b[i]);
  //     }
  //   }
  //   return res;
  // }

  // List<int> intersection(List<int> nums1, List<int> nums2) {
  //   var a = nums1.toSet();
  //   var b = nums2.toSet();
  //   var res = a.intersection(b);

  //   return res.toList();
  // }

  List<int> intersection(List<int> nums1, List<int> nums2) {
    Set<int> set = {};

    for (var i = 0; i < nums1.length; i++) {
      for (var j = 0; j < nums2.length; j++) {
        if (nums1[i] == nums2[j]) {
          set.add(nums1[i]);
        }
      }
    }
    return set.toList();
  }

  int majorityElement(List<int> nums) {
    // int n = 0;
    // var res = nums.toSet();
    // for (var i = 0; i < nums.length; i++) {
    //   n ^= nums[i];
    // }
    // for (var i = 0; i < res.length; i++) {
    //   res.remove(n);
    // }
    // return res.first;
    nums.sort();
    return nums[nums.length ~/ 2];
  }

  merge(List<int> nums1, int m, List<int> nums2, int n) {
    for (var i = 0; i < nums2.length; i++) {
      nums1.add(nums2[i]);
      nums1.remove(0);
    }
    nums1.sort();
  }

  bool isValid(String s) {
    String string1 = '{}';
    String string2 = '[]';
    String string3 = '()';
    if (s.contains(string1) || s.contains(string2) || s.contains(string3)) {
      return true;
    }
    return false;
  }

  int search(List<int> nums, int target) {
    int low = 0;
    int high = nums.length - 1;
    while (low <= high) {
      int mid = (low + high) ~/ 2;
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] > target) {
        high = mid - 1;
      } else {
        low = mid + 1;
      }
    }
    return -1;
  }

  // bool isSubsequence(String s, String t) {
  //   for (var i = 0; i < s.length; i++) {
  //     if (!t.contains(s[i])) {
  //       return false;
  //     }
  //   }
  //   return true;
  // }

  isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    var sArr = s.split('');
    var tArr = t.split('');
    sArr.sort();
    tArr.sort();
    for (var i = 0; i < sArr.length; i++) {
      if (sArr[i] != tArr[i]) {
        return false;
      }
    }
    return true;
  }

  int findPeakElement(List<int> nums) {
    // int res = 0;
    // for (var i = 0; i < nums.length; i++) {
    //   if (nums[i] > nums[res]) {
    //     res = i;
    //   }
    // }

    // return res;

    int left = 0;
    int right = nums.length - 1;
    while (left < right) {
      int mid = (left + right) ~/ 2;
      if (nums[mid] > nums[mid + 1]) {
        right = mid;
      } else {
        left = mid + 1;
      }
    }
    return left;
  }

  List<int> twoSumTwo(List<int> numbers, int target) {
    // List<int> resArr = [];
    // for (int i = 0; i < numbers.length; i++) {
    //   for (int j = i + 1; j < numbers.length; j++) {
    //     if (numbers[i] + numbers[j] == target) {
    //       resArr = [i + 1, j + 1];
    //     }
    //   }
    // }
    // return resArr;

    int l = 0;
    int h = numbers.length - 1;
    while (l < h) {
      if (numbers[l] + numbers[h] > target) h--;
      if (numbers[l] + numbers[h] < target) l++;
      if (numbers[l] + numbers[h] == target) return [l + 1, h + 1];
    }
    return [-1, -1];
  }

  int minSubArrayLen(int target, List<int> nums) {
    int minLength = nums.length + 1;
    int left = 0;
    int sum = 0;

    for (int right = 0; right < nums.length; right++) {
      sum += nums[right];

      while (sum >= target) {
        minLength = min(minLength, right - left + 1);
        sum -= nums[left];
        left++;
      }
    }

    return minLength == nums.length + 1 ? 0 : minLength;
  }

  List<int> findDuplicates(List<int> nums) {
    List<int> res = [];
    nums.sort();
    var i = 0;
    while (i < nums.length - 1) {
      if (nums[i] == nums[i + 1]) {
        res.add(nums[i]);
      }
      i++;
    }
    // if (nums.length <= 1) {
    //   return [];
    // }
    // for (int i = 0; i < nums.length; i++) {
    //   for (int j = i + 1; j < nums.length; j++) {
    //     if (nums[i] == nums[j]) {
    //       res.add(nums[j]);
    //     }
    //   }
    // }
    return res;
  }

  int peakIndexInMountainArray(List<int> arr) {
    var arr2 = List<int>.from(arr);
    arr2.sort();

    int res = 0;
    int max = arr2.last;
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == max) {
        res = i;
      }
    }
    return res;
  }

  List<int> smallerNumbersThanCurrent(List<int> nums) {
    List<int> res = [];

    for (int i = 0; i < nums.length; i++) {
      int cur = 0;
      for (int j = 0; j < nums.length; j++) {
        if (j != i && nums[i] > nums[j]) {
          cur++;
        }
      }
      res.add(cur);
    }
    return res;
  }

  int specialArray(List<int> nums) {
    // int count = 0;

    // for (int i = 0; i < nums.length; i++) {
    //   if (nums[i] >= 2) {
    //     count++;
    //   }
    // }
    // if (nums == [0, 0]) {
    //   count += -1;
    // }
    // return count;
    for (int i = 1; i <= nums.length; i++) {
      int count = 0;
      for (int j = 0; j < nums.length; j++) {
        if (nums[j] >= i) {
          count++;
        }
      }
      if (count == i) {
        return i;
      }
    }
    return -1;
  }

  int firstMissingPositive(List<int> nums) {
    int res = 0;
    if (nums.isEmpty) return 1;
    for (int i = 1; i <= nums.length + 1; i++) {
      if (!nums.contains(i)) {
        res = i;
        break;
      }
    }
    return res;
  }

  int maxSubArray(List<int> nums) {
    int cur = 0;
    int maxN = 0;

    for (int i = 0; i < nums.length; i++) {
      if (cur < 0) {
        cur = 0;
      }

      cur += nums[i];
      maxN = max(maxN, cur);
    }

    return maxN;
  }

  int prefixCount(List<String> words, String pref) {
    // List<String> res = [];
    // for (var element in words) {
    //   if (element.startsWith(pref)) {
    //     res.add(element);
    //   }
    // }
    // return res.length;
    int res = 0;
    for (var element in words) {
      if (element.startsWith(pref)) {
        res++;
      }
    }
    return res;
  }

  int minSteps(String s, String t) {
    // int res = 0;
    // int res2 = 0;
    // for (int i = 0; i < s.length; i++) {
    //   if (!t.contains(s[i])) {
    //     res++;
    //   }
    // }

    // for (int i = 0; i < t.length; i++) {
    //   if (!s.contains(t[i])) {
    //     res2++;
    //   }
    // }
    // return res + res2;

    int res = 0;
    for (int i = 0; i < s.length; i++) {
      if (!t.contains(s[i])) {
        res++;
      }
    }

    for (int i = 0; i < t.length; i++) {
      if (!s.contains(t[i])) {
        res++;
      }
    }
    return res;
  }

  reverseString(List<String> s) {
    int l = 0;
    int r = s.length - 1;

    while (r > l) {
      String swap = s[l];
      s[l] = s[r];
      s[r] = swap;
      r--;
      l++;
    }
  }

  int numIdenticalPairs(List<int> nums) {
    int count = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          count++;
        }
      }
    }

    return count;
  }

  int firstUniqChar(String s) {
    for (int i = 0; i < s.length; i++) {
      if (s.indexOf(s[i]) == s.lastIndexOf(s[i])) {
        return i;
      }
    }
    return -1;
  }

//Sorting by selection
  int findMaxUnderBoundary(List<int> arr, int topK) {
    int maxNumber = -2147483648;
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] < topK) {
        maxNumber = max(maxNumber, arr[i]);
      }
    }
    return maxNumber;
  }

  findTopElement(List<int> arr, int numberOfElem) {
    List<int> maxArr = [];

    int previousMax = 2147483647;
    for (int i = 0; i < numberOfElem; i++) {
      int currentMax = findMaxUnderBoundary(arr, previousMax);
      previousMax = currentMax;
      maxArr.add(previousMax);
    }
    return maxArr;
  }

// min
  int findMinUnderBoundary(List<int> arr, int n) {
    int minNumber = 2147483647;
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] > n) {
        minNumber = min(minNumber, arr[i]);
      }
    }

    return minNumber;
  }

  List<int> findTopMinElement(List<int> arr, int numberOfElem) {
    List<int> minArr = [];
    int previousMin = -2147483648;
    for (int i = 0; i < numberOfElem; i++) {
      int current = findMinUnderBoundary(arr, previousMin);
      previousMin = current;
      minArr.add(previousMin);
    }
    return minArr;
  }

  bool isPerfectSquare(int num) {
    int sqrtNum = sqrt(num).round();
    if (sqrtNum * sqrtNum == num) return true;
    return false;
  }

  int finalValueAfterOperations(List<String> operations) {
    int ans = 0;
    for (String str in operations) {
      if (str == "--X" || str == "X--") {
        ans -= 1;
      } else {
        ans += 1;
      }
    }
    return ans;
  }

  String reversePrefix(String word, String ch) {
    if (!word.contains(ch)) {
      return word;
    }

    int index = word.indexOf(ch);
    String prefix = word.substring(0, index + 1);
    String reversedPrefix = prefix.split('').reversed.join();

    return reversedPrefix + word.substring(index + 1);
  }

  int minimizedStringLength(String s) {
    Set set = {};
    for (int i = 0; i < s.length; i++) {
      if (!set.contains(s[i])) {
        set.add(s[i]);
      }
    }
    return set.length;
  }

  int maxRepeating(String sequence, String word) {
    int count = 0;
    String res = word;
    while (sequence.contains(res)) {
      count++;
      res += word;
    }
    return count;
  }

  bool isUgly(int n) {
    if (n <= 0) return false;
    for (int p in [2, 3, 5]) {
      while (n % p == 0) {
        n ~/= p;
      }
    }
    return n == 1;
  }

  List<int> buildArray(List<int> nums) {
    List<int> ans = [];
    for (int i = 0; i < nums.length; i++) {
      ans.add(nums[nums[i]]);
    }
    return ans;
  }

  int countOperations(int num1, int num2) {
    int counterOperations = 0;
    while (num1 > 0 && num2 > 0) {
      if (num1 > num2)
        num1 -= num2;
      else
        num2 -= num1;
      counterOperations++;
    }
    return counterOperations;
  }

  List<String> stringMatching(List<String> words) {
    Set<String> result = {};
    for (int i = 0; i < words.length; i++) {
      for (int j = 0; j < words.length; j++) {
        if (i != j && words[i].contains(words[j])) {
          result.add(words[j]);
        }
      }
    }
    return result.toList();
  }

  // isStrictlyPalindromic(int n) {
  //   final String numTo2 = n.toRadixString(2);
  //   final String numTo3 = n.toRadixString(3);
  //   final String numTo4 = n.toRadixString(4);
  //   final String numTo5 = n.toRadixString(5);
  //   final String numTo6 = n.toRadixString(6);
  //   final String numTo7 = n.toRadixString(7);

  //   if (numTo2 == numTo2.split('').reversed.join('') &&
  //       numTo3 == numTo3.split('').reversed.join('') &&
  //       numTo4 == numTo4.split('').reversed.join('') &&
  //       numTo5 == numTo5.split('').reversed.join('') &&
  //       numTo6 == numTo6.split('').reversed.join('') &&
  //       numTo7 == numTo7.split('').reversed.join('')) {
  //     return true;
  //   }
  //   return false;
  // }

  // bool isStrictlyPalindromic(int n) {
  //   Solution s = new Solution();
  //   for (int i = 2; i <= n - 2; i++) {
  //     if (s.ans(n, i))
  //       continue;
  //     else
  //       return false;
  //   }
  //   return true;
  // }

  // bool ans(int n, int i) {
  //   int temp = 0;
  //   int check = n;
  //   while (check != 0) {
  //     temp = (temp * i) + check % i;
  //     check ~/= 10;
  //   }
  //   return n == temp;
  // }

  bool isStrictlyPalindromic(int n) {
    if (n == 0 || n == 1) {
      return true;
    }

    for (int i = 2; i <= 7; i++) {
      String numberInBaseI = n.toRadixString(i);
      if (numberInBaseI != numberInBaseI.split('').reversed.join('')) {
        return false;
      }
    }
    return true;
  }

  int maximumCount(List<int> nums) {
    int res = 0;
    int countPost = 0;
    int countNeg = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > 0) {
        countPost++;
      } else if (nums[i] < 0) {
        countNeg++;
      }

      if (countPost > countNeg) {
        res = countPost;
      } else {
        res = countNeg;
      }
    }
    return res;
  }

  int countNegatives(List<List<int>> grid) {
    int ans = 0;
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[i].length; j++) {
        if (grid[i][j] < 0) {
          ans += 1;
        }
      }
    }
    return ans;
  }

  int findComplement(int num) {
    final int mask = (1 << num.bitLength) - 1;
    return num ^ mask;
  }

  int singleNumber(List<int> nums) {
    int x = 0, y = 0;
    for (final num in nums) {
      x = (x ^ num) & ~y;
      y = (y ^ num) & ~x;
    }
    return x;
  }

  int maxProfit(List<int> prices) {
    int profit = 0;
    int minPrice = prices.first;
    for (int i = 1; i < prices.length; i++) {
      minPrice = min(minPrice, prices[i]);
      profit = max(profit, prices[i] - minPrice);
    }
    return profit;
  }

  int differenceOfSum(List<int> nums) {
    int res1 = nums.reduce((value, element) => value + element);
    var res2 = (nums.join('').split('').map((e) => int.parse(e)))
        .reduce((value, element) => value + element);
    return res1 - res2;

    //   int elementSum = 0;
    // int digitSum = 0;
    // for (int num in nums) {
    //   elementSum += num;
    //   while (num > 0) {
    //     digitSum += num % 10;
    //     num ~/= 10;
    //   }
    // }
    // return (elementSum - digitSum).abs();
  }

  // List<String> findWords(List<String> words) {
  //   final rowOne = 'qwertyuiop'.split('');
  //   final rowSec = 'asdfghjkl'.split('');
  //   final rowThre = 'zxcvbnm'.split('');
  //   final List<String> res = [];

  //   for (int i = 0; i < words.length;i++) {
  //     if(){
  //       res.
  //     }
  //   }
  //   return rowOne;
  // }

  List<String> fizzBuzz(int n) {
    List<String> res = [];
    for (int i = 1; i <= n; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        res.add('FizzBuzz');
        continue;
      } else if (i % 3 == 0) {
        res.add('Buzz');
        continue;
      } else if (i % 5 == 0) {
        res.add('Fizz');
        continue;
      } else {
        res.add('$i');
      }
    }

    return res;
  }

  int addDigits(int num) {
    var res = num.toString()
        .split('')
        .map((e) => int.parse(e))
        .toList()
        .reduce((value, element) => value + element);
    while (res >= 10) {
      res = res
          .toString()
          .split('')
          .map((e) => int.parse(e))
          .toList()
          .reduce((value, element) => value + element);
    }

    return res;
  }

  int findMaxConsecutiveOnes(List<int> nums) {
    //   int count = 0;
    //   List<int> res = [];

    //   for (int i = 0; i < nums.length; i++) {
    //     if (nums[i] == 1) {
    //       count++;
    //       res.add(count);
    //     } else {
    //       count = 0;
    //       res.add(count);
    //     }
    //   }
    //   res.sort();
    //   return res.last;
    // }

    int maxcount = 0;
    int currentCount = 0;

    for (int num in nums) {
      if (num == 1) {
        currentCount++;
        if (currentCount > maxcount) {
          maxcount = currentCount;
        }
      } else {
        currentCount = 0;
      }
    }

    return maxcount;
  }

  int maxPower(String s) {
    int count = 1;
    int maxNumber = 1;
    for (int i = 0; i < s.length - 1; i++) {
      if (s[i] == s[i + 1]) {
        count++;
        maxNumber = max(maxNumber, count);
      } else {
        count = 1;
      }
    }
    return maxNumber;
  }

  bool isPowerOfFour(int n) {
    final logarithm = log(n) / log(4);
    return logarithm % 1 == 0;

    //    if (n < 1) return false;
    // while(n != 1) {
    //   if (n % 4 == 0) {
    //     n ~/= 4;
    //   } else {
    //     return false;
    //   }
    // }
    // return true;
  }

  bool threeConsecutiveOdds(List<int> arr) {
    int count = 0;
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] % 2 == 1) {
        count++;
        if (count == 3) {
          return true;
        }
      } else {
        count = 0;
      }
    }
    return false;
  }

  String arrangeWords(String text) {
    // List<String> words = text.split(' ');

    // words.sort((a, b) => a.length - b.length);

    // String result = words.join(' ');

    // result = result[0].toUpperCase() + result.substring(1);

    // return result;

    final res = text.toLowerCase().split(' ');
    res.sort((a, b) => a.length - b.length);
    final resik = res.join(' ');

    return resik[0].toUpperCase() + resik.substring(1);
  }

  bool isPowerOfTwo(int n) {
    if (n <= 0) {
      return false;
    }
    while (n != 1) {
      if ((n / 2) == (n ~/ 2) * 1.0) {
        n ~/= 2;
      } else {
        return false;
      }
    }
    return true;
  }
}

class NumArray {
  List<int> arr = [];

  NumArray(List<int> nums) {
    arr = nums;
  }

  int sumRange(int left, int right) {
    int sum = 0;
    for (int i = left; i <= right; i++) sum += arr[i];
    return sum;
  }
}

import 'dart:math';

class Solution {
  int binarySearch(List<int> nums, int target) {
    nums.sort();
    int left = 0;
    int right = nums.length - 1;

    while (left <= right) {
      int medium = ((left + right) / 2).toInt();
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

//   findTheDifference(String s, String t) {
//     var splitS = s.split('');
//     var splitT = t.split('');
//     var res = [];
//     for (var i = 0; i < splitT.length; i++) {
//       if (!splitS.contains(splitT[i])) {
//         res.add(splitT[i]);
//       }
//     }
//     return res.join().toString();
//   }

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
    List<int> res = [];
    if (nums.isEmpty) {
      return [-1, -1];
    }
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        res.add(i);
      } else if (!nums.contains(target)) {
        res = [-1, -1];
      }
    }
    return res;
  }

  reverseWords(String s) {
    var arrString = s.split(' ');
    var res = (arrString.map((e) => e.split('').reversed.join())).join(' ');
    return res;
  }
}

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

  bool containsDuplicate(List<int> nums) {
    var boba = nums.toSet().length;
    if (boba != nums.length) {
      return true;
    }
    return false;
  }

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

  int searchInsertV2(List<int> nums, int target) {
    int low = 0;
    int high = nums.length - 1;
    while (low <= high) {
      var midle = ((low + high) ~/ 2).toInt();
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
}

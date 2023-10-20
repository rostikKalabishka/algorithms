import 'binary_search/binary_search.dart';

void main() {
  final solution = Solution();
  // print(solution.binarySearch([-1, 0, 3, 5, 9, 12], 9));
  // print(solution.removeElement([3, 2, 2, 3], 3));
  // print(solution.removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2));
  // print(solution.removeElement([3, 3], 3));
  // print(solution.longestCommonPrefix(["flower", "flow", "flight"]));

  // print(solution.missingNumber([3, 0, 1]));
  // print(solution.missingNumber([0, 1]));
  // print(solution.missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1]));

  // print(solution.containsDuplicate([1, 2, 3, 1]));
  // print(solution.containsDuplicate([1, 2, 3, 4]));
  // print(solution.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]));

  // print(solution.findDisappearedNumbers([4, 3, 2, 7, 8, 2, 3, 1]));
  // print(solution.findDisappearedNumbers([1, 1]));
  // print(solution.plusOne([1, 2, 3]));
  // print(solution.plusOne([4, 3, 2, 1]));
  // print(solution.plusOne([9]));
  // print(solution.isPalindrome('A man, a plan, a canal: Panama'));
  // print(solution.isPalindrome('race a car'));
  // print(solution.isPalindrome(' '));
  // print(solution.findTheDifference('abcd', "abcde"));
  // print(solution.findTheDifference("", "y"));
  // print(solution.findTheDifference("а", "аа"));

  // print(solution.searchInsertV2([1, 3, 5, 6], 5));
  // print(solution.searchInsertV2([1, 3, 5, 6], 2));
  // print(solution.searchInsertV2([1, 3, 5, 6], 7));

  // print(solution.intersect([1, 2, 2, 1], [2, 2]));
  // print(solution.intersect([4, 9, 5], [9, 4, 9, 8, 4]));

  // print(solution.reverseWords("the sky is blue"));
  // print(solution.reverseWords("  hello world  "));
  // print(solution.reverseWords("a good   example"));

  // print(solution.finalString("string"));

  // print(solution.finalString("poiinter"));

  // print(solution.maxNumber([100, 2, 11, 123, 9]));
  // // print(solution.maxNumber2([-1392, -1920, -7, -453, -91234]));
  // print(solution.maxNumber2([9, 4, 1, 8, 7, 13, 6, 5]));
  // print(solution
  //     .floatNumber([9, 4, 1, 8, 7, 9, 4, 1, 8, 7, 8, 7, 18, 3, 13, 6, 5]));

  // print(solution.maxinarr([
  //   [95, 67, 13, 55, 44, 11, 10],
  //   [7, 190, 4, 44, 11, 1, 99],
  //   [0, 5, -1, 500, 14, 90, 1]
  // ]));

  // print(solution.moveZeroes([0, 1, 0, 3, 12]));

  // print(solution.findDuplicate([1, 3, 4, 2, 2]));
  // print(solution.findDuplicate([3, 1, 3, 4, 2]));

  // print(solution.canBeEqual([1, 2, 3, 4], [2, 4, 1, 3]));
  // print(solution.canBeEqual([7], [7]));
  // print(solution.canBeEqual([3, 7, 9], [3, 7, 11]));
  // print(solution.canBeEqual([1, 2, 2, 3], [3, 7, 11]));

  // print(solution.twoSum([2, 7, 11, 15], 9));
  // print(solution.twoSum([3, 2, 4], 6));
  // print(solution.twoSum([3, 3], 6));

  // print(solution.searchRange([5, 7, 7, 8, 8, 10], 8));

  // print(solution.searchRange([5, 7, 7, 8, 8, 10], 6));

  // print(solution.searchRange([], 0));

  // print(solution.reverseWords("Let's take LeetCode contest"));
  // print(solution.reverseWords("God Ding"));

  // print(solution.reverse(123));
  // print(solution.reverse(-123));
  // print(solution.reverse(120));
  // print(solution.reverse(-2147483648));
  // print(solution.reverse(0));

  // print(solution.myAtoi("42"));
  // print(solution.myAtoi("   -42"));
  // // print(solution.myAtoi("4193 with words"));

  // // print(solution.myAtoi(
  // //   [1, 2, 3, 0, 0, 0],
  // // ));
  // print(solution.myAtoi("4193 with words"));
  // print(solution.myAtoi("words and 987"));
  // print(solution.myAtoi("-91283472332"));

  // print(solution.intersection([1, 2, 2, 1], [2, 2]));
  // print(solution.intersection([4, 9, 5], [9, 4, 9, 8, 4]));

  // print(solution.majorityElement([3, 2, 3]));
  // print(solution.majorityElement([2, 2, 1, 1, 1, 2, 2]));
  // print(solution.merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3));
  // print(solution.merge([1], 1, [], 0));
  // print(solution.merge([0], 0, [1], 0));

  // print(solution.search([-1, 0, 3, 5, 9, 12], 9));
  // print(solution.search([-1, 0, 3, 5, 9, 12], 2));

  // print(solution.isSubsequence("abc", "ahbgdc"));
  // print(solution.isSubsequence("axc", "ahbgdc"));

  // print(solution.isAnagram("anagram", "nagaram"));
  // print(solution.isAnagram("rat", "car"));

  // print(solution.findPeakElement([1, 2, 3, 1]));
  // print(solution.findPeakElement([1, 2, 1, 3, 5, 6, 4]));
  // print(solution.findPeakElement([1, 2, 1]));

  // print(solution.twoSumTwo([2, 7, 11, 15], 9));
  // print(solution.twoSumTwo([2, 3, 4], 6));
  // print(solution.twoSumTwo([-1, 0], -1));

  // print(solution.minSubArrayLen(7, [2, 3, 1, 2, 4, 3]));
  // print(solution.minSubArrayLen(4, [1, 4, 4]));
  // print(solution.minSubArrayLen(11, [1, 1, 1, 1, 1, 1, 1, 1]));
  // print(solution.minSubArrayLen(11, [1, 2, 3, 4, 5]));

  // print(solution.findDuplicates([4, 3, 2, 7, 8, 2, 3, 1]));
  // print(solution.findDuplicates([1, 1, 2]));
  // print(solution.findDuplicates([1]));

  // print(solution.peakIndexInMountainArray([0, 1, 0]));
  // print(solution.peakIndexInMountainArray([0, 2, 1, 0]));
  // print(solution.peakIndexInMountainArray([0, 10, 5, 2]));

  // print(solution.smallerNumbersThanCurrent([8, 1, 2, 2, 3]));
  // print(solution.smallerNumbersThanCurrent([6, 5, 4, 8]));
  // print(solution.smallerNumbersThanCurrent([7, 7, 7, 7]));

  // print(solution.specialArray([3, 5]));
  // print(solution.specialArray([0, 0]));
  // print(solution.specialArray([0, 4, 3, 0, 4]));
  // print(solution.specialArray([3, 6, 7, 7, 0]));

  // print(solution.firstMissingPositive([1, 2, 0]));
  // print(solution.firstMissingPositive([3, 4, -1, 1]));
  // print(solution.firstMissingPositive([7, 8, 9, 11, 12]));
  // print(solution.firstMissingPositive([1]));

  // print(solution.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]));
  // print(solution.maxSubArray([1]));
  // print(solution.maxSubArray([5, 4, -1, 7, 8]));

  // print(solution.prefixCount(["pay", "attention", "practice", "attend"], "at"));
  // print(solution.prefixCount(["leetcode", "win", "loops", "success"], "code"));

  // print(solution.minSteps('leetcode', "coats"));
  // print(solution.minSteps("night", "thing"));
  // print(solution.minSteps("cotxazilut", "nahrrmcchxwrieqqdwdpneitkxgnt"));

  // print(solution.reverseString(["h", "e", "l", "l", "o"]));
  // print(solution.reverseString(["H", "a", "n", "n", "a", "h"]));

  // print(solution.numIdenticalPairs([1, 2, 3, 1, 1, 3]));
  // print(solution.numIdenticalPairs([1, 1, 1, 1]));
  // print(solution.numIdenticalPairs([1, 2, 3]));

  // print(solution.firstUniqChar("leetcode"));
  // print(solution.firstUniqChar("loveleetcode"));
  // print(solution.firstUniqChar("aabb"));

  // print(solution.findTopElement([10, 6, 15, 93, 42, 7, 32], 3));
  // print(solution.findTopElement([100, 100, 100, 55, 8], 4));

  // print(solution.findTopMinElement([-10, 6, -15, -93, 42, 7, -32], 3));
  // print(solution.findTopMinElement([10, -6, 15, 93, -42, -7, 32], 5));

  // print(solution.bobaK([1, 1, 1, 2, 2, 3], 2));
  // print(solution.bobaK([1],1));

  // print(solution.isPerfectSquare(16));
  // print(solution.isPerfectSquare(14));

  // print(solution.reversePrefix("abcdefd", 'd'));
  // print(solution.reversePrefix("xyxzxe", "z"));
  // print(solution.reversePrefix("abcd", 'z'));

  // print(solution.minimizedStringLength("aaabc"));
  // print(solution.minimizedStringLength("cbbd"));
  // print(solution.minimizedStringLength("dddaaa"));

  // print(solution.maxRepeating("ababc", "ab"));
  // print(solution.maxRepeating("ababc", "ba"));
  // print(solution.maxRepeating("ababc", "ac"));

  // print(solution.isUgly(6));
  // print(solution.isUgly(1));
  // print(solution.isUgly(14));

  // print(solution.isStrictlyPalindromic(9));
  // print(solution.isStrictlyPalindromic(4));

  // print(solution.maximumCount([-2, -1, -1, 1, 2, 3]));
  // print(solution.maximumCount([-3, -2, -1, 0, 0, 1, 2]));
  // print(solution.maximumCount([5, 20, 66, 1314]));

  print(solution.maxProfit([7, 1, 5, 3, 6, 4]));
  print(solution.maxProfit([7, 6, 4, 3, 1]));
}

//575. Distribute Candies

//N1

class Solution {
  int distributeCandies(List<int> candyType) {
    int maxEat = candyType.length ~/ 2;
    Set<int> uniqueCandies = Set<int>();

    for (int candy in candyType) {
      uniqueCandies.add(candy);
    }

    return uniqueCandies.length < maxEat ? uniqueCandies.length : maxEat;
  }
}

//N2

class SecondSolution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    Map<int, int> nextGreater = {};
    List<int> stack = [];

    for (int num in nums2) {
      while (stack.isNotEmpty && stack.last < num) {
        nextGreater[stack.removeLast()] = num;
      }
      stack.add(num);
    }

    List<int> ans = [];
    for (int num in nums1) {
      ans.add(nextGreater[num] ?? -1);
    }

    return ans;
  }
}

//N3

class ThirdSolution {
  List<int> findDisappearedNumbers(List<int> nums) {
    Set<int> numSet = Set<int>.from(nums);
    List<int> missingNumbers = [];

    for (int i = 1; i <= nums.length; i++) {
      if (!numSet.contains(i)) {
        missingNumbers.add(i);
      }
    }

    return missingNumbers;
  }
}

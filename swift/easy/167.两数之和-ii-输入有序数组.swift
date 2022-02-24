/*
 * @lc app=leetcode.cn id=167 lang=swift
 *
 * [167] 两数之和 II - 输入有序数组
 */

// @lc code=start
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        guard numbers.count > 0 else {
            return []
        }
        var left = 0
        var right = numbers.count - 1
        while left < right {
            var sum = numbers[left] + numbers[right]
            if sum == target {
                return [left + 1 , right + 1]
            }else if sum > target {
                right -= 1
            }else {
                left += 1
            }
        }
        return []
    }
}
// @lc code=end

/*
 一.Leetcode 题解 - 双指针
   1. 有序数组的 Two Sum
   题解:
   使用双指针，一个指针指向值较小的元素，一个指针指向值较大的元素。指向较小元素的指针从头向尾遍历，指向较大元素的指针从尾向头遍历。

如果两个指针指向元素的和 sum == target，那么得到要求的结果；
如果 sum > target，移动较大的元素，使 sum 变小一些；
如果 sum < target，移动较小的元素，使 sum 变大一些。
数组中的元素最多遍历一次，时间复杂度为 O(N)。只使用了两个额外变量，空间复杂度为 O(1)。
*/
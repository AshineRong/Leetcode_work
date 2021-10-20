/*
 * @lc app=leetcode.cn id=53 lang=swift
 *
 * [53] 最大子序和
 */

// @lc code=start
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var curSum = nums[0], maxSum = nums[0]
        for i in 1..<nums.count {
            curSum = max(nums[i], curSum + nums[i])
            maxSum = max(maxSum, curSum)
        }
        return maxSum
    }
}
// @lc code=end


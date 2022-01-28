/*
 * @lc app=leetcode.cn id=1470 lang=swift
 *
 * [1470] 重新排列数组
 */

// @lc code=start
class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var res:[Int] = []
        for i in 0..<n {
            res.append(nums[i])
            res.append(nums[i + n])
        }
        return res
    }
}
// @lc code=end


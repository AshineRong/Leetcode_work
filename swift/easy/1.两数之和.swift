/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
        for (i, n) in nums.enumerated() {
            if let index = dict[target - n] {
                return [i, index]
            }
            dict[n] = i
        }
        
        return []
    }
}
// @lc code=end


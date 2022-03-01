/*
 * @lc app=leetcode.cn id=680 lang=swift
 *
 * [680] 验证回文字符串 Ⅱ
 *
 * https://leetcode-cn.com/problems/valid-palindrome-ii/description/
 *
 * algorithms
 * Easy (40.12%)
 * Likes:    452
 * Dislikes: 0
 * Total Accepted:    99.7K
 * Total Submissions: 248.7K
 * Testcase Example:  '"aba"'
 *
 * 给定一个非空字符串 s，最多删除一个字符。判断是否能成为回文字符串。
 * 
 * 
 * 
 * 示例 1:
 * 
 * 
 * 输入: s = "aba"
 * 输出: true
 * 
 * 
 * 示例 2:
 * 
 * 
 * 输入: s = "abca"
 * 输出: true
 * 解释: 你可以删除c字符。
 * 
 * 
 * 示例 3:
 * 
 * 
 * 输入: s = "abc"
 * 输出: false
 * 
 * 
 * 
 * 提示:
 * 
 * 
 * 1 
 * s 由小写英文字母组成
 * 
 * 
 */

// @lc code=start
class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let chars = Array(s)
        var left = 0, right = chars.count - 1
        while left < right {
            let leftStr = chars[left]
            let rightStr = chars[right]
            if leftStr == rightStr {
                left += 1
                right -= 1
            }else {
                break
            }

        }
        return left >= right || validPalindrome(chars,left: left + 1, right:right) || validPalindrome(chars,left:left,right:right - 1)
    }
    func validPalindrome(_ s: [Character],left:Int,right:Int) -> Bool {
        var lef = left, righ = right
        while lef < righ {
            let leftStr = s[lef]
            let rightStr = s[righ]
            if leftStr == rightStr {
                lef += 1
                righ -= 1
            }else {
                return false 
            }
        }
        return true
    }
}
// @lc code=end

/*
思路就是官方的双指针对撞，当左右指针的字符串不同时，尝试分别删除左边、右边再判断是否为回文。

swift语言特性，若采用string.Index截取string子串的方式，一定会TLE。
因此应先将目标string转换成Array，再进行双指针操作。

Time->O(n)
Space->O(1)
*/
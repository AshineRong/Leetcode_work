/*
 * @lc app=leetcode.cn id=633 lang=swift
 *
 * [633] 平方数之和
 */

// @lc code=start
class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        var a = 0, b = Int(sqrt(Float(c)))
        while a <= b {
            let sum = a * a + b * b 
            if sum < c {
                a += 1
            }else if sum > c {
                b -= 1
            }else {
                return true
            }
        }
        return false
    }
}
// @lc code=end

/*
双指针
设置 a初始为0, b初始为c的最大平方根(b = √c 例如: c=9,b=3; c=10,b=3) , 不断收缩找值
1.a^2 + b^2 < c, a增加1
2.a^2 + b^2 > c, b减少2
直到 a<=b 返回
时间复杂度O(√c)
空间复杂度O(1)
*/
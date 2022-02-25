/*
 * @lc app=leetcode.cn id=345 lang=swift
 *
 * [345] 反转字符串中的元音字母
 *
 * https://leetcode-cn.com/problems/reverse-vowels-of-a-string/description/
 *
 * algorithms
 * Easy (54.05%)
 * Likes:    239
 * Dislikes: 0
 * Total Accepted:    118.8K
 * Total Submissions: 219.8K
 * Testcase Example:  '"hello"'
 *
 * 给你一个字符串 s ，仅反转字符串中的所有元音字母，并返回结果字符串。
 * 
 * 元音字母包括 'a'、'e'、'i'、'o'、'u'，且可能以大小写两种形式出现。
 * 
 * 
 * 
 * 示例 1：
 * 
 * 
 * 输入：s = "hello"
 * 输出："holle"
 * 
 * 
 * 示例 2：
 * 
 * 
 * 输入：s = "leetcode"
 * 输出："leotcede"
 * 
 * 
 * 
 * 提示：
 * 
 * 
 * 1 <= s.length <= 3 * 10^5
 * s 由 可打印的 ASCII 字符组成
 * 
 * 
 */

// @lc code=start
class Solution {
    func reverseVowels(_ s: String) -> String {
        var chars = Array(s)
        var left = 0, right = chars.count - 1
        var flag = false
        let vowels: Set<Character> = ["A","E","I","O","U","a","e","i","o","u"]
        while left < right {
            // 左边遇到元音
            flag = vowels.contains(chars[left])
            if flag && vowels.contains(chars[right]) {
                chars.swapAt(left,right)
                left += 1
                right -= 1
            }else if flag {
                right -= 1
            }else {
                left += 1
            }
        }
        return String(chars)
    }
}
// @lc code=end

/*
思路与算法

我们可以使用两个指针 ii 和 jj 对字符串相向地进行遍历。

具体地，指针 ii 初始时指向字符串 ss 的首位，指针 jj 初始时指向字符串 ss 的末位。在遍历的过程中，我们不停地将 ii 向右移动，直到 ii 指向一个元音字母（或者超出字符串的边界范围）；同时，我们不停地将 jj 向左移动，直到 jj 指向一个元音字母。此时，如果 i<ji<j，那么我们交换 ii 和 jj 指向的元音字母，否则说明所有的元音字母均已遍历过，就可以退出遍历的过程

复杂度分析

时间复杂度：O(n)，其中 n是字符串 s 的长度。在最坏的情况下，两个指针各遍历整个字符串一次。

空间复杂度：O(1) 或 O(n)，取决于使用的语言中字符串类型的性质。如果字符串是可修改的，那么我们可以直接在字符串上使用双指针进行交换，空间复杂度为 O(1)，否则需要使用 O(n) 的空间将字符串临时转换为可以修改的数据结构（例如数组），空间复杂度为 O(n)。

*/
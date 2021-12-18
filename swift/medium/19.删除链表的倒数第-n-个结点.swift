/*
 * @lc app=leetcode.cn id=19 lang=swift
 *
 * [19] 删除链表的倒数第 N 个结点
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {

        var dummyHead = ListNode(-1)
        dummyHead.next = head
        var fast = dummyHead
        var slow = dummyHead

        for _ in 0..<n {

            fast = fast.next!
        }

        while fast.next != nil {
            fast = fast.next!
            slow = slow.next!
        }

        slow.next = slow.next!.next

        return dummyHead.next
    }
}


// @lc code=end


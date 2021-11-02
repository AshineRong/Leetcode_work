Leetcode_practice Demo

# Easy
1. tow-sum 
    ![两数相加图解](https://gitee.com/ComBase/oss/raw/master/uPic/2021_10_20/h6TN6X_dZDmdr.png) 
2. fibonacci-number
    * while 循环,累加到n-1 即可,second += first; first = second -first; 最后返回seconde即可
    * for 循环0..<n-1 sum = first+second; first = second;second = sum; 最后返回seconde即可 O(n)
    * 递归: return fib1(n - 1) + fib1(n - 2); O(2^n)
3. merge-sorted-array
    * 两个指针用于指向 ums1ums1 和 nums2nums2 的初始化元素数量的末位，也就是分别指向 m-1m−1 和 n-1n−1 的位置，还有一个指针，我们指向 nums1nums1 数组末位即可
    * ![merge-sorted-array](https://pic.leetcode-cn.com/1617592252-NWqDin-4.jpg)
4. 接雨滴 ![https://leetcode-cn.com/problems/trapping-rain-water/solution/jie-yu-shui-by-leetcode/]
   > 直接按问题描述进行。对于数组中的每个元素，我们找出下雨后水能达到的最高位置，等于两边最大高度的较小值减去当前高度的值。
   
   **暴力法**: 
    * 初始化 ans=0ans=0
    * 遍历数组：
       -  初始化 max_left = 0 max_right = 0
       -  从当前元素中左扫描
          - max_left = max(max_left ,heghit[j])
       -  从当前元素向右扫描
          - max_right = max(max_right ,heghit[j])
       - 将min(max_left, max_right) -height[i] 累加到ans

    复杂性分析
    * 时间复杂度： O(n^2)数组中的每个元素都需要向左向右扫描。
    * 空间复杂度 O(1) 的额外空间。





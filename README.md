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
    * ![](https://pic.leetcode-cn.com/1617592252-NWqDin-4.jpg)


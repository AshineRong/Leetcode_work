Leetcode_practice Demo

# Easy
1. tow-sum 
    ![两数相加图解](https://gitee.com/ComBase/oss/raw/master/uPic/2021_10_20/h6TN6X_dZDmdr.png) 
2. fibonacci-number
    * while 循环,累加到n-1 即可,second += first; first = second -first; 最后返回seconde即可
    * for 循环0..<n-1 sum = first+second; first = second;second = sum; 最后返回seconde即可 O(n)
    * 递归: return fib1(n - 1) + fib1(n - 2); O(2^n)


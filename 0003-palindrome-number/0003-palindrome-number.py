class Solution:
    def isPalindrome(self, x: int) -> bool:
        s = str(x)
        reverse = ''
        for i in range(len(str(x))-1,-1,-1):
            reverse = reverse + s[i]

        if s == reverse:
            return True
        else:
            return False
class Solution:
    def isHappy(self, n: int) -> bool:
        
        seen = set()
        
        while n != 1:
            if n in seen:
                return False
            
            seen.add(n)
            
            temp = n
            n = 0
            for digit in str(temp):
                n += int(digit) ** 2
        
        return True
        
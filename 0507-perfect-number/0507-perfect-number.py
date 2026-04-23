class Solution:
    def checkPerfectNumber(self, num: int) -> bool:
        if num <= 1:
            return False
        
        su = 1  # 1 is always a divisor
        
        i = 2
        while i * i <= num:
            if num % i == 0:
                su += i
                if i != num // i:
                    su += num // i
            i += 1
        
        return su == num
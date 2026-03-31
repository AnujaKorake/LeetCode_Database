class Solution:
    def pivotInteger(self, n: int) -> int:
        for x in range(1, n+1):
            left = x * (x + 1) // 2
            right = (n * (n + 1) // 2) - ((x - 1) * x // 2)
            
            if left == right:
                return x
        
        return -1
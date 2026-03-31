class Solution:
    def pivotInteger(self, n: int) -> int:
        result = -1
        pivot = 1

        if n == 1:
            return 1   # fixed

        while pivot <= n:
            # sum from pivot to n
            right = ((n - pivot + 1) * (pivot + n)) // 2

            # sum from 1 to pivot
            left = (pivot * (pivot + 1)) // 2

            if right == left:
                result = pivot
                break

            pivot += 1

        return result
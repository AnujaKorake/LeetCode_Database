class Solution:
    def fib(self, n: int) -> int:
        f1 = 0
        f2 = 1
        f3 = 1
        if n == 0:
            return 0
        for i in range(n-1):
            f3 = f1 + f2
            f1 = f2
            f2 = f3

        return f3
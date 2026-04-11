class Solution:
    def selfDividingNumbers(self, left: int, right: int) -> List[int]:
        result  = set()
        for i in range(left, right+1):
            is_yes = True
            for j in str(i):
                if int(j) == 0 or i % int(j) != 0:
                    is_yes = False
                    break
            if is_yes:
                result.add(i)
        L = list(result)
        L.sort()
        return L
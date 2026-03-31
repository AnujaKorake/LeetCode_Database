class Solution:
    def canMakeArithmeticProgression(self, arr: List[int]) -> bool:
        arr.sort()
        d1 = arr[1] - arr[0]
        result = True
        for i in range(len(arr)-1):
            if arr[i+1] - arr[i] != d1:
                result = False
                break
        
        return result
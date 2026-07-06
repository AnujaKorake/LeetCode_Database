class Solution:
    def largestAltitude(self, gain: List[int]) -> int:
        ans = 0
        alt = 0
        for g in gain:
            alt = alt + g
            ans = max(ans, alt)

        return ans

# Synced seamlessly with LeetHub Pro
# Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
# Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna
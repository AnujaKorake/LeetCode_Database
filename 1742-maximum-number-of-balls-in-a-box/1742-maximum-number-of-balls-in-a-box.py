class Solution:
    def countBalls(self, lowLimit: int, highLimit: int) -> int:
        box = [0] * 50  # max possible digit sum is <= 45
        max_balls = 0

        for num in range(lowLimit, highLimit + 1):
            digit_sum = self.get_digit_sum(num)
            box[digit_sum] += 1
            max_balls = max(max_balls, box[digit_sum])

        return max_balls

    def get_digit_sum(self, num: int) -> int:
        s = 0
        while num > 0:
            s += num % 10
            num //= 10
        return s

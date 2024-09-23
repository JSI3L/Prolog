coins = [1, 5, 10, 20]
def find_combinations(n, coins):
    result = []
    def backtrack(remaining, combination, start):
        if remaining == 0:
            result.append(list(combination))
            return
        for i in range(0, 4):
            if coins[i] <= remaining:
                combination.append(coins[i])
                backtrack(remaining - coins[i], combination, i)
                combination.pop()
    backtrack(n, [], 0)
    return result

n = int(input("Enter the amount: "))

combinations = find_combinations(n, coins)

for combo in combinations:
    print(combo)
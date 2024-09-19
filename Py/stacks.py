class Stack:
    def __init__(self):
        self.items = []

    def is_empty(self):
        return len(self.items) == 0

    def push(self, item):
        self.items.append(item)

    def pop(self):
        if not self.is_empty():
            return self.items.pop()
        return None

def check_parentheses_balance(expression):
    stack = Stack()
    for char in expression:
        if char == '(':
            stack.push(char)
        elif char == ')':
            if stack.is_empty():
                return False
            stack.pop()
    return stack.is_empty()

# Ejemplo de uso
expression = "(a + b) * (c + d)"
if check_parentheses_balance(expression):
    print("Los paréntesis están balanceados.")
else:
    print("Los paréntesis no están balanceados.")
def isParentheses(s):
    return s == '(' or s == '{' or s == '['

if __name__ == '__main__':
    inp = input('Enter Input : ')
    check = {'}': '{', ')': '(', ']': '['}
    stacks = []
    for s in inp:
        if isParentheses(s):
            stacks.append(s)
        elif len(stacks) == 0 or stacks[-1] != check[s]:
            print('Parentheses : Unmatched ! ! !')
            quit()
        elif stacks[-1] == check[s]:
            stacks.pop()
    if len(stacks) == 0:
        print('Parentheses : Matched ! ! !')
    else:
        print('Parentheses : Unmatched ! ! !')

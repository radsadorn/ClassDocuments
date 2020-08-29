
class Game:
    def __init__(self):
        self.words = list()
        self.is_end = False

    def link(self, new_word):
        if len(self.words) == 0:
            self.words.append(new_word)
            print(f"'{new_word}' -> {self.words}")
            self.is_end = False
            return
        last_word = self.words[-1]  # get last element
        l2cl = last_word[len(last_word)-2:len(last_word)].lower()  # last 2 character of last word
        f2cn = new_word[0:2].lower()
        if l2cl == f2cn:
            self.words.append(new_word)
            print(f"'{new_word}' -> {self.words}")
            self.is_end = False
        else:
            self.is_end = True  # end game here

    def restart(self):
        print('game restarted')
        self.words = list()
"""
P Apple,P LEMON,R,P onion,X
'Apple' -> ['Apple']
'LEMON' -> ['Apple','LEMON']
game restarted
'onion' -> ['onion']
P apple,p lemon,P onion,X
'apple' -> ['apple']
'p lemon' is Invalid Input !!!
"""


if __name__ == '__main__':
    tk = Game()
    print('*** TorKham HanSaa ***')
    lst = input('Enter Input : ').split(',')
    # print(lst)
    for item in lst:
        if not tk.is_end:
            splitted = item.split()
            cmd = splitted[0]
            length = len(splitted)
            # print(cmd, length)
            if length == 1 and cmd == 'R':
                tk.restart()
            elif length == 1 and cmd == 'X':
                tk.is_end = True
            elif length == 2 and cmd == 'P':
                tk.link(splitted[1])
            else:
                print(f'\'{item}\' is Invalid Input !!!')
                break

            if tk.is_end:
                print(f'\'{splitted[1]}\' -> game over')
        else:
            break
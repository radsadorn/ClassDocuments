class Rehash:

    def __init__(self, data):
        self.table_size     = int(data.split()[0])
        self.max_colision   = int(data.split()[1])
        self.trashold       = int(data.split()[2])

        self.table = [None] * self.table_size
        self.data = []

        print('Initial Table :') # initial table
        self.print_table()

    def hashing(self, data):
        if data not in self.data: # is new data
            print(f'Add : {data}')
            self.data += [data]

        count = 0 
        while count <= self.max_colision:                       # table not full
            index = (data + (count ** 2)) % self.table_size     # index for data
            if self.table[index] is None:                       # check index for new data
                self.table[index] = data                        # insert new data
                if ((self.table_size - self.table.count(None)) / self.table_size * 100 > self.trashold): # check trashold
                    #treshold
                    print('****** Data over threshold - Rehash !!! ******')
                    self.rehashing()
                return
            count += 1
            print(f"collision number {count} at {index}") # when collision
            if count == self.max_colision: # when max collision
                print('****** Max collision - Rehash !!! ******')
                self.rehashing()
                return

    def rehashing(self):
        # find new table size
        tmp = self.table_size * 2 # new table size = prime number is greater than old table size * 2
        while True:
            divide = 2
            check = False # check prime number
            while  divide < tmp ** 0.5: # find prime number over 2 * table size
                if tmp % divide == 0: # not is prime number
                    check = True
                    break
                divide += 1
            if not check: # is prime number
                break
            tmp += 1 

        self.table = [None] * tmp # reset table to initial
        self.table_size = tmp # new table size

        for data in self.data: 
            self.hashing(data) # rehashing

    def print_table(self):
        for i, data in enumerate(self.table):
            print(f'#{i + 1}\t{data}')
        print('----------------------------------------')

if __name__ == '__main__':

    print(' ***** Rehashing *****')
    tb, data = input('Enter Input : ').split('/')

    table = Rehash(tb)
    for d in data.split():
        table.hashing(int(d))
        table.print_table()

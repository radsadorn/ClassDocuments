'''
จาก class LinkedList ในข้อ 2 ให้นักศึกษาใช้ class LinkedList  ข้างต้นเขียนโปรแกรมเพื่อหาค่าฐานนิยม (mode)

และแสดงผลดังตัวอย่าง โดยให้ใช้โครงสร้างข้อมูลแบบ LinkedList เท่านั้น 

***ห้ามใช้ function sorted()  ***

ตัวอย่าง output 
Enter numbers : 7 9 3 2 1 2 3 4 8 9 3 15
Output :
Linked data : 1 2 2 3 3 3 4 7 8 9 9 15
Amount of data = 12
Mode = 3
 
Enter numbers : 7 6 74 44 6 37 55 35 3 31 3 10
Output :
Linked data : 3 3 6 6 7 10 31 35 37 44 55 74
Amount of data = 12
Mode = 3, 6

Enter numbers : 7 74 44 6 37 55 35 31 3 10 22 12
Output :
Linked data : 3 6 7 10 12 22 31 35 37 44 55 74
Amount of data = 12
Mode is not available.

'''

class LinkedList:
    class Node :
        def __init__(self,data,next = None) :
            self.data = data
            if next is None :
                self.next = None
            else :
                self.next = next
                
        def __str__(self) :
            return str(self.data)

    def __init__(self,head = None):
        if head == None:
                self.head = self.tail = None
                self.size = 0
        else:
            self.head = head
            t = self.head        
            self.size = 1
            while t.next != None :
                t = t.next
                self.size += 1
            self.tail = t
            
    def __str__(self) :
        s = 'Linked data : '
        p = self.head
        while p != None :
            s += str(p.data)+' '
            p = p.next
        return s

    def __len__(self) :
        return self.size

    def removeHead(self) :
        if self.head == None : return
        if self.head.next == None :
            p = self.head
            self.head = None
        else :
            p = self.head
            self.head = self.head.next
        self.size -= 1
        return p.data

    def append(self, data):
        p = self.Node(data)
        self.size += 1
        if self.head == None:
            self.head = self.tail = p
        else:
            if data < self.head.data:
                p.next = self.head
                self.head = p
                return
            if data > self.tail.data:
                self.tail.next = p
                self.tail = p
                return

            cur = self.head
            while cur.next != None and cur.next.data < data:
                cur = cur.next
            p.next = cur.next
            cur.next = p
    
    def isEmpty(self) :
        return self.size == 0
    
    def nodeAt(self,i) :
        p = self.head
        for j in range(i) :
            p = p.next
        return p

def findMode(l):
    mode = {}
    maxx = 0
    check = LinkedList()
    for i in range(len(l)):
        data = l.nodeAt(i).data
        mode[str(data)] = mode.get(str(data), 0) + 1
        if mode[str(data)] > maxx:
            maxx = mode[str(data)]
        dup = False
        for i in range(len(check)):
            if check.nodeAt(i).data == data:
                dup = True
                break
        if dup:
            continue
        check.append(data)

    counter = 0
    modelist = LinkedList()
    for i in range(len(check)):
        data = check.nodeAt(i).data
        if mode[str(data)] == maxx:
            counter += 1
            modelist.append(data)

    if counter == len(l):
        print('Mode is not available.')
    else:
        print('Mode =  ', end = '')
        for i in range(len(modelist)):
            print(modelist.nodeAt(i).data, end = ' ')
            

if __name__ == '__main__':
    inputlist = [int(e) for e in input('Enter numbers : ').split()]

    l = LinkedList()

    for data in inputlist:
        l.append(data)

    print("Output :")
    print(l)
    print('Amount of data =', len(l))
    findMode(l)


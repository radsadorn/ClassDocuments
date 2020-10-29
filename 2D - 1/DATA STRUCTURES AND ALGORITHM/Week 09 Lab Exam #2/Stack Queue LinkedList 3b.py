'''
จาก class LinkedList ในข้อ 2 จงเขียน method removeDup() เป็น method ที่ลบข้อมูลตัวซ้ำออก โดยไม่เปลี่ยนลำดับการนำข้อมูล

ตัวอย่างการทำงาน

L1 = LinkedList()

#เพิ่มข้อมูลจนมีข้อมูล 3->5->7->9->11->7->5->20

L1.removeDup()

print(L1)

LinkedList data : 3 5 7 9 11 20
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
    
    def append(self, data):
        p = self.Node(data)
        if self.head == None:
            self.head = self.tail = p
        else:
            t = self.tail
            t.next = p   
            self.tail =p  
        self.size += 1

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

    def removeDup(self):
        dup = []
        if self.head == None : return
        p = self.head
        while p.next != None :
            dup.append(p.data)
            if p.next.data in dup:
                p.next = p.next.next
            else:
                p = p.next
    
    def isEmpty(self) :
        return self.size == 0
    
    def nodeAt(self,i) :
        p = self.head
        for j in range(i) :
            p = p.next
        return p

if __name__ == '__main__':
    inputlist = [int(e) for e in input('Enter numbers : ').split()]

    l = LinkedList()
    for data in inputlist:
        l.append(data)
    print("Linkedlist Before removeDuplicate")
    print(l)
    l.removeDup()
    print("Linkedlist After removeDuplicate")
    print(l)
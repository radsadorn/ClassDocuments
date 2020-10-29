'''
จาก class LinkedList ในข้อ 2 จงเขียน method contentEquivalence  เพื่อตรวจสอบว่า linked list ที่รับเข้ามากับ linked list 
ของตัวมันเองมีคุณสมบัตินี้หรือไม่  โดยจะ return True ถ้ามีคุณสมบัตินี้ ถ้าไม่ใช่เป็น False

โดยคุณสมบัติ content equivalence(CV) เป็นดังนี้ เมื่อ linked list มีจำนวนโหนดเท่ากันและโหนดต่าง ๆ ของทั้ง 2 lists 
มีค่าเท่ากันทุกโหนด โดยที่ตำแหน่งของโหนดที่เก็บข้อมูลของทั้ง 2 lists อาจแตกต่างกันได้เช่น [1,2,4,8] กับ [4,1,2,8] 
มีคุณสมบัติ CV ในขณะที่ [1,2,4,8] กับ [3,4,2,8] ไม่มีคุณสมบัติ CV

***ห้ามใช้ function sorted() และการจัดการข้อมูลด้วยชนิดข้อมูล list ของ python ***
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

    def contentEquivalence(self, lst):
        if self.size != len(lst):
            return False
        for i in range(self.size):
            if self.nodeAt(i).data != lst.nodeAt(i).data:
                return False
        return True

    def appendSort(self, data):
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

if __name__ == '__main__':
    inputlist = input('List1,List2 : ').split(',')

    list1 = LinkedList()
    list2 = LinkedList()

    for data in inputlist[0].split():
        list1.appendSort(data)

    for data in inputlist[1].split():
        list2.appendSort(data)

    print('List1 content Equivalence List2 :', list1.contentEquivalence(list2))
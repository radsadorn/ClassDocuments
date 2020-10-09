'''

จงสร้างโครงสร้างข้อมูล Stack ที่มี method ดังต่อไปนี้ 
__str__ สำหรบแสดงข้อมูลที่อยู่ใน stack
push(data) สำหรับเก็บข้อมูล data   
pop() สำหรับนำข้อมูลออก
isEmpty() สำหรับตรวจสอบว่า stack ว่างไหม ถ้าว่าง ให้เป็น True
size() สำหรับแสดงขนาดของ stack ว่ามีข้อมูลกี่ตัว
peek() สำหรับแสดงค่าข้อมูลที่อยู่ที่อยู่บนสุด
bottom() สำหรับแสดงค่าข้อมูลที่อยู่ล่างสุด
โดยเมื่อป้อน 1 แล้วให้ทำงานคำสั่งต่อไปนี้   
    
'''

class Stack:

    def __init__(self):
        self.stack = []

    def __str__(self):
        s = 'Data in Stack is : '
        for i in self.stack:
            s += str(i) + ' '
        return s

    def push(self, data):
        self.stack.append(data)
    
    def pop(self):
        return self.stack.pop()

    def isEmpty(self):
        return self.stack is []

    def size(self):
        return len(self.stack)

    def peek(self):
        return self.stack[-1]

    def bottom(self):
        return self.stack[0]
    
if __name__ == '__main__':
    inp = input('Enter choice : ')

    s = Stack()
    if inp == '2':
        s.push(100)
        s.push(200)
        s.push(300)
        s.pop()
        print(s)
        print("Stack is Empty :", s.isEmpty())
    elif inp == '1':
        s.push(10)
        s.push(20)
        print(s)
        s.pop()
        s.push(30)
        print("Peek of stack :", s.peek())
        print('Bottom of stack :', s.bottom())
    else:
        s.push(11)
        s.push(22)
        s.push(33)
        s.pop()
        print(s)
        print('Stack size :', s.size())
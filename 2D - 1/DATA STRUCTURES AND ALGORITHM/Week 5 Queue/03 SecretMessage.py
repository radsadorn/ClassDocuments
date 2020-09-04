class Queue:

    def __init__(self, data):
        self.queue = []
        data = data.split()
        for val in data:
            self.queue += list(val)

    def __str__(self):
        return ' '.join(str(a) for a in self.queue)

    def push(self, data):
        self.queue.append(data)

    def setValue(self, index, data):
        self.queue[index] = data

    def getValue(self, index):
        return self.queue[index]

    def pop(self):
        return self.queue.pop(0) if self.size() != 0 else 'Empty'

    def size(self):
        return len(self.queue)

def decodemsg(q1, q2):
    for i, val in enumerate(q1.queue):
        if val >= 'a':
            q1.setValue(i, chr(abs(((ord(val) - ord('a') - int(q2.getValue(i % q2.size())))) % 26) + ord('a')))
        else:
            q1.setValue(i, chr(abs(((ord(val) - ord('A') - int(q2.getValue(i % q2.size())))) % 26) + ord('A')))
    print('Decode message is : ', list(q1.queue))   
    return 0

def encodemsg(q1, q2):
    for i, val in enumerate(q1.queue):
        if val >= 'a':
            q1.setValue(i, chr(((ord(val) + int(q2.getValue(i % q2.size())) - ord('a')) % 26) + ord('a')))
        else:
            q1.setValue(i, chr(((ord(val) + int(q2.getValue(i % q2.size())) - ord('A')) % 26) + ord('A')))
    print('Encode message is : ', list(q1.queue))   

if __name__ == '__main__':
    string, number = input('Enter String and Code : ').split(',')

    q1 = Queue(string)
    q2 = Queue(number)
    encodemsg(q1, q2)
    decodemsg(q1, q2)
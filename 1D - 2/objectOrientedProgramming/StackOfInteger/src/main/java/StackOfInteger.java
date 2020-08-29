/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class StackOfInteger {
    int[] elements;
    int size;

    public StackOfInteger() {
        System.out.println("Defalt stack's capacity is 50");
        elements = new int[50];
        size = 0;
    }
    
    public StackOfInteger (int capacity) {
        System.out.println("Defalt stack's capacity is "+ capacity);
        size = 0;
        elements = new int[capacity];
    }
    
    public boolean empty() {
        return (size == 0) ? (size > 0) == true  : false;
    }
    
    public void push(int value) {
        if(size<elements.length)
            elements[size++] = value;
        else System.out.println("Stack is full");
    }
    
    public void peek() {
        for (int i = 0; i < size; i++) {
            System.out.print(elements[i] + " ");
        }
        System.out.println("");
    }
    
    public void pop() {
        if(size>0)
            size--;
        else System.out.println("Stack is empty");
    }

    public int getSize() {
        return size;
    }
    
}
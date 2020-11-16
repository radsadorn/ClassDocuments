def maxSubArraySum(a,size): 
       
    max_so_far = None
    max_ending_here = 0
       
    for i in range(0, size): 
        max_ending_here = max_ending_here + int(a[i])
        if not max_so_far:
            max_so_far = max_ending_here
        elif (max_so_far < max_ending_here): 
            max_so_far = max_ending_here 
  
        if max_ending_here < 0: 
            max_ending_here = 0   
    return max_so_far 

if __name__ == '__main__':
    item, box = input('Enter Input : ').split('/')
    a = item.split()
    print("Maximum contiguous sum is", maxSubArraySum(a,len(a))) 

    # print(f'Minimum weight for {box} box(es) = {ans}')
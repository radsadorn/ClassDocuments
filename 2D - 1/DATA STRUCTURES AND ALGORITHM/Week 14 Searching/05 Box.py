def minimum_weight(order_list, box):
    if box == 1:
        return sum(order_list)

    min_weight = 999999999999999999999999999999999999999999999999999999999999999
    for index in range(len(order_list)):

        if len(order_list[index:]) < box - 1:
            break

        this_box    =   sum(order_list[:index])
        other_box   =   minimum_weight(order_list[index:], box - 1)  # next box

        min_weight  =   min(max(this_box, other_box), min_weight)  # find min of max of boxes
            
    return min_weight

if __name__ == '__main__':
    order, box = input('Enter Input : ').split('/')
    order = list(map(int, order.split()))

    print(f'Minimum weigth for {box} box(es) = {minimum_weight(order, int(box))}')
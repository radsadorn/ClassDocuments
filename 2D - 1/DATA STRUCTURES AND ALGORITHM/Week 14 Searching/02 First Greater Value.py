def bi_search(l, r, arr, x):
    mid = ( r + l ) // 2

    if r < l:
        if l == len(arr):
            return 'No First Greater Value'
        return arr[l]

    if x < arr[mid]:
        return bi_search(l, mid - 1, arr, x)
    elif x > arr[mid]:
        return bi_search(mid + 1, r, arr, x)
    else:
        if arr[mid] is not arr[-1]:
            return arr[mid + 1]
        return 'No First Greater Value'

if __name__ == '__main__':

    inp = input('Enter Input : ').split('/')
    arr, k = list(map(int, inp[0].split())), inp[1]

    for a in k.split():
        print(bi_search(0, len(arr) - 1, sorted(arr), int(a)))
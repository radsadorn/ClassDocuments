if __name__ == '__main__':
    print('*** String Rotation ***')
    st, nd = map(list, input('Enter 2 strings : ').split())

    st_copy = st.copy()
    nd_copy = nd.copy()

    round = 0
    while (st_copy != st or nd != nd_copy) or round < 1:
        st_copy = st_copy[-2:] + st_copy[:len(st) - 2]
        nd_copy = nd_copy[3:] + nd_copy[:3]

        round += 1
        if round < 6 or (st_copy == st and nd_copy == nd):
            print(f'{round} {"".join(st_copy)} {"".join(nd_copy)}')
        elif round == 6:
            print(' . . . . .')
    print(f'Total of  {round} rounds.')



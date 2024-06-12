def how_big(x):
    if x > 10:
        print('huge')
    elif x > 5:
        return 'big'
    if x > 0:
        print('positive')
    else:
        print(0)
print(how_big(1), how_big(0))
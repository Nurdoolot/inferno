

with open('air.txt', 'r') as air:
    res = air.read().replace('\n', ' ').replace(' ', '').replace('.', ' ').replace(',', ' ')
    
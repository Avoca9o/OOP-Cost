import time

start = time.perf_counter()

for i in range(0, 100000000):
    pass

finish = time.perf_counter()

elapsed = int((finish - start) * 1000)

with open('output.txt', 'a') as fout:
    fout.write(f"{elapsed}\n")

filename = '/output.txt'
folders = ['c++', 'c#', 'java', 'go', 'python3', 'javascript', 'php', 'kotlin', 'rust', 'ruby', 'fortran', 'delphi']

with open('output.txt', 'w') as fout:
    for folder in folders:
        fout.write(folder + '\n')
        path = folder + filename
        with open(path, 'r') as fin:
            type = fin.readline().strip()
            if type == 'kComplete':
                a, b, c = [[int(fin.readline().strip().lstrip()) for i in range(11)] for j in range(3)]
                fout.write(str(sorted(a)[5]) + '\n' + str(sorted(b)[5]) + '\n' + str(sorted(c)[5]) + '\n\n')
            elif type == 'kIncomplete':
                a, b = [[int(fin.readline().strip()) for i in range(11)] for j in range(2)]
                fout.write(str(sorted(a)[5]) + '\n' + str(sorted(b)[5]) + '\n\n')

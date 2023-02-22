from tkinter import filedialog

def main():
    filename = filedialog.askopenfilename(title="Choose File")

    print(namesort(filename))

def namesort(filename):
    ns = {}
    with open(filename ,'r') as file1:
        file1.readline()
        for line in file1:
            lines = line.split()
            print(lines)
            fn = lines[0]
            ln = lines[-1]
            if ln not in ns:
                ns[ln] = fn,
            else:
                ns[ln] += fn,
    return ns

main()

from tkinter import filedialog

def main():
    filename = filedialog.askopenfilename(title="Choose File")

    print(wordcount(filename))


def wordcount(name):
    lines = []
    wcdict = {}
    with open(name , 'r' , encoding="utf8") as file1:
        for line in file1:
            lines = [*line]
            for l in lines:
                l = l.lower()
                if l.isalpha():
                    if l not in wcdict:
                        wcdict[l] = 1
                    else:
                        wcdict[l] += 1

    return sorted(wcdict.items(), reverse=False, key=lambda x: x[1] )

main()           
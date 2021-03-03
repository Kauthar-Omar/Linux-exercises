These are new codes and exercises on bash that aren't in tutorials and may be hard to recall.

### new sort flags learnt

Scrambing further the random sort flag -R using the system random number generator

```bash
sort -R fruits.txt --random-source=/dev/random
```

How would you extract only the lines that repeat more than once in the file fruit.txt into a new file named repeated_fruit.txt file?

```bash
sort fruit.txt | uniq -d > repeated_fruit.txt
```

Command
```bash
awk -F"\t" '{print $1}' Diamonds_fix.txt
```

This will print the value in the first column of the file Diamonds_fix.txt.

A little explanation:

- The option -F”\t” tells AWK that the delimiter is tab, which is generally represented as \t on the command line.
- Each delimited column is represented by a $ symbol followed by a number. The number represents the column number so $1 is column1, $2 is column 2 etc. $0 prints the whole line.
- For each line of the file, AWK will do whatever command is contained in the curly brackets. In this case, we are asking it to print the value in the first column.

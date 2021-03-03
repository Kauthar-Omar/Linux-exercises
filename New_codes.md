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

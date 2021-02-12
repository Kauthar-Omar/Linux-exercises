# Linux-exercises
This repo is to a platform where I put down the answers to my attempted questions from a linux exercise shared on slack.

## Below are the queations attempted

1. How many processes are currently running on your system? Use ps and wc, the first line of output of ps is not a process!

```bash
ps | wc -l 
```
nb: still figuring out to remove one line to get correct answer.

2. Write a script that upon invocation shows the time and date, lists all logged-in users, and gives the system uptime. The script then saves this information to a logfile.

Script below saved on filenamed script-q2.sh

```bash
date && who && uptime > q2variables.log
bash script-q2.sh
```

3. Which command would you use in order to create an empty file in the current directory, let's say empty.txt?

```bash
touch empty.txt
```

4. You are in /home/icipe/  suppose this directory is empty. How do you create in only one command the whole path /home/icipe/Work/mini-project/RNA-Seq/?

```bash
mkdir -p Work/mini-project/RNA-Seq/

```

5. Suppose your current working directory contains a file named seqs.txt. How do you rename this file into sequences.fasta? Does this have any effect on the content of the file, and if yes, what does it do?

command used to rename:
```bash
mv seqs.txt sequences.fasta

```
there is no effect the text witten remains the same.

6. How can you create in a single command a file containing the contents "Hello, world!" and named universal_greeting.txt?

```bash
echo "Hello, world!" > universal_greeting.txt

```

7. What about creating the same file but with filename "universal greeting.txt" (the filename contains a space)?

```bash
echo "Hello, world!" > "universal greeting.txt"

```

8. How can you use the commandline (on whichever machine you are now, that is connected to the internet) to download directly the file you can see on https://github.com/Fnyasimi/my-first-repo/blob/main/directory1/test.fa ? Be careful, you need to get the raw text file itself, not the full HTML page presenting it.

```bash
wget https://raw.githubusercontent.com/Fnyasimi/my-first-repo/main/directory1/test.fa

```

9. How can you count the number of lines in this text file (test.fa)? 
```bash
wc -l test.fa 
```

How do you count the number of sequences?

```bash
grep ">" test.fa | wc -l
```

10. Extract only the identifier lines from this file, and write them into a file called "identifiers.txt".

```bash
grep "^>" test.fa > identifiers.txt

```

11. How can you process the file you got from question 8 to replace all its uppercase "A" letters into lowercase "a" letters, leaving the rest untouched?

```bash
sed -i "s/A/a/g" test.fa
```

12. In one command, ask for the display of all identifier lines from the same file test.fa without wrapping the lines, i.e. by having all lines displayed on your screen effectively start with the character '>'.

```bash
grep "^>" test.fa
```

13. Can you write a very short script (possibly one single commandline) to extract from the same file the species names?

```bash
grep ">" test.fa | sort > species.txt && sed -i "s/PREDICTED: //g" species.txt && cut -d " " -f 2,3 species.txt
```

14. Once this is done, how do you count the species names with their order of multiplicity (i.e. how many sequences belong to Mus musculus, how many to Homo sapiens, etc)?

I used the code in Q 13 to create a reusable shell script for q 14 called "speciesfinder.sh"

```bash
bash speciesfinder.sh | sort | uniq -c
```

15. Write a loop in Bash producing all the integers from 1 to 30, one per line?

```bash
for int in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do
echo $int
done
```

16.  Create at once 20 files called "trial1" to "trial20" and *then* rename them all by appending the suffix ".data". Of course, don't issue 20 commands, but just one.

```bash
for files in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
touch trial$files.data
done
```

17.  Try this with the command "expr 1 / 0", whose purpose is to calculate the integer result of 1 divided by 0. What happens? 

Prints output : 

expr: division by zero

Why?

18. How can you separately redirect the standard output and the standard error streams into two separate files?






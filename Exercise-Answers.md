## Below are the questions attempted

1. How many processes are currently running on your system? Use ps and wc, the first line of output of ps is not a process!

```bash
ps | expr $(wc -l) - 1 
```
NB: still trying the code not final answer.

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
for int in {1..30}
do
echo $int
done
```

16.  Create at once 20 files called "trial1" to "trial20" and *then* rename them all by appending the suffix ".data". Of course, don't issue 20 commands, but just one.

```bash
for files in {1..20}
do
touch trial$files
mv trial$files trial$files.data
done
```

17.  Try this with the command "echo errors 2> standarderrors.log", whose purpose is to calculate the integer result of 1 divided by 0. What happens? 

Prints output : 

expr: division by zero

Why?

bash doesn't have a way to trap divisions by zero but can divide by other integers.

18. How can you separately redirect the standard output and the standard error streams into two separate files?

```bash
echo output 1> standardoutput.log
echo errors 2> standarderrors.log
```

19. Write a Bash script asking "What's your name?", then waiting for you (the user) to enter you name and press Enter , following what the program displays some text according to the following pattern:
(
"Good morning/day/evening, your_name!
It's now current_time on this lovely day of current_day." and it exits.
For instance, the message written by your program would be:
Good day Emmanuel! It's not 12:57EAT on this lovely day of July 20. 1:00
or 'Good morning" in the morning hours, or "Good evening" in the evening hours, depending on the current time.
Of course there will be at least an if or a case construct in your script.

below is the bash script greetings.sh

```bash
echo " Please input your name"
read name

date=$(date +%H)
time=$(date +%T)
day=$(date +%D)

if [ $date -lt "12" ]
then
echo "Good Morning ${name}"
echo "It's now $time on this lovely day of $day."
elif [[ $date -gt "12" && $date -lt "16" ]]
then
echo "Good Afternoon ${name}"
echo "It's now $time on this lovely day of $day."
else
echo "Good Evening ${name}"
echo "It's now $time on this lovely day of $day."
fi

```


20. Suppose your current working directory is /home/icipe/Linux/Exercises/. What is the command that will enable to move to /home/icipe/Fun_stuff/?

```bash
cd ../../Fun_stuff/
```

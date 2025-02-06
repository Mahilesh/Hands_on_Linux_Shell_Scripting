# Hands_on_Linux_Shell_Scripting

this is my own personal respository for practice session for learning Shell scripting in deep

dir - /mahilesh/Shell_Scripting/

Architectural Flow for my Setup to make changes

[VS Code on Windows]  ←(SSH/SFTP/VSCode Remote)→  [Office Linux Machine]  ←(HTTPS/SSH)→  [GitHub]

# New Commands I need to practice

1. whatis: Whatis shows a short particular information about a command.

```
$ whatis wget
wget (1) - The non-interactive network downloader!
```

2. w: w displays information about currently logged in users and what each user is doing.

```
 $ w
 23:35:01 up  2:29,  1 user,  load average: 0.72, 1.07, 1.04
 USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
 nirjas   :1       :1               21:04   ?xdm?  34:58   0.01s /usr/lib
```

3. The flag '-p' is used to create multiple directories or parent directories at once.

```
 $ mkdir -p dir1/dir2/dir3
```

4. Copy directory: The cp command with -r option is used to copy whole directory with its files recursively.

```
 $ cp -r directory1 /home/nirjas/myfiles
```

5. cut: The cut command is used to extract portion of texts from a file.

```
 $ cut -c 4 file.txt
This will show 4th character from each line of that file. 

You can also modify it in the follwing way to specify your range.
 $ cut -c 4-10 file.txt
```

6. less: When browsing the long log files you can use another very useful command which is called less. If a file content is very large then less is used to view the file contents as a paged manner.

```
 $ less /var/log/syslog

Use the following command to navigate through less:
q - Used to quit out of less and go back to your shell.
Page up, Page down, Up and Down - Navigate using the arrow keys and page keys.
g - Moves to beginning of the text file.
G - Moves to the end of the text file.
/search - You can search for specific text inside the text document. Prefacing the words you want to search with /
h - If you need a little help about how to use less while you’re in less, use help.
```

7. sort: The sort command is used to sort the lines in a text file.

```
 $ sort file1.txt
To do a reverse sort the -r option is used.

 $ sort -r file1.txt
```
Example:-
```
[root@lvsdevmahileshsbx01 Shell_Scripting]# sort newfile
dwqdwqdwqd
fewfewewewd
fewfewfe        fefwef  fefwef  wefewew fewfewf         fefewfewf               fef
wdwqdwqd
wdwqdwqwd wdwqqw3e243536754
wqdwqdwq

[root@lvsdevmahileshsbx01 Shell_Scripting]# sort -r newfile
wqdwqdwq
wdwqdwqwd wdwqqw3e243536754
wdwqdwqd
fewfewfe        fefwef  fefwef  wefewew fewfewf         fefewfewf               fef
fewfewewewd
dwqdwqdwqd
```

8. tr: the tr (translate) command is used to translate a set of character to another one. The following example will convert all lowercase character to uppercase one.

```
 $ tr a-z A-Z
 terminal
 TERMINAL
```

9. tr: the tr (translate) command is used to translate a set of character to another one. The following example will convert all lowercase character to uppercase one.
```
 $ tr a-z A-Z
 terminal
 TERMINAL

[root@lvsdevmahileshsbx01 Shell_Scripting]# tr a-z A-Z < newfile
FEWFEWEWEWD
DWQDWQDWQD
WDWQDWQD
```

10. wc: The wc command is used to show count of words, lines and bytes from file respectively.

```
 $ wc file1.txt
To see only the line counts use the following.

 $ wc -l file1.txt
```

11. Grep can also be used with regular expressions.
```
 $ grep "one$" file1.txt
The above command will show the lines which are ending the word one. Some other useful regular expressions with grep are as follows.
```

12. Bracket Expressions: You can also specify mutiple words with a particular character by enclosing them with a bracket.

```
 $ grep "swe[ea]t" file.txt
The above command will match this two words sweet and sweat
```

13. To find every line which starts with a capital letter,

  ```bash
   $ grep "^[A-Z]" file.txt
  ```

14. To ignore any lines that are commented or blank use the following grep command,

```
 $ sudo grep -vE '^(#|$)'
It's very useful to find lines in a big configuration file.
```

Continue reading from permission based commands - https://github.com/Nirzak/All-in-one-Linux-Commands?tab=readme-ov-file#Permission-commands

15. To grep only the entries ending with 0*a (like 01a, 02a, 03a, etc.), you can use the following command:

```
host -l gspt.net | grep -E 'lvsldtdockapp[0-9]+a\.gspt\.net'

ouput:-
[root@lvsprdsa01.gspt.net ~]# host -l gspt.net | grep -E 'lvsldtdockapp[0-9]+a\.gspt\.net'
lvsldtdockapp01a.gspt.net has address 10.124.95.70
lvsldtdockapp02a.gspt.net has address 10.124.95.71
lvsldtdockapp03a.gspt.net has address 10.124.95.75
lvsldtdockapp04a.gspt.net has address 10.124.95.76
```

Understanding each letter of the command [Full Documentation](https://github.com/Mahilesh/Hands_on_Linux_Shell_Scripting/blob/main/detailed_info.md#understanding-the-command).

16. 

# dr-quine
This is an introduction to malware development.
A quine is a computer program (a kind of metaprogram) whose output and source code are identical. As a challenge or for fun, some programmers try to write the shortest quine in a given programming language. The operation that consist of simply opening the source file and displaying it is considered cheating. More generally, a program that uses any data entry cannot be considered a valid quine. A trivial solution is a program whose source code is empty. Indeed, the execution of such a program produces for most languages no output, that is to say the source code of the program.

## 1 - Colleen
The first program consists of a binary file which outputs its code.

## 2 - Grace
The second program is able to write its own code to a different file.

## 3 - Sully
The third program self-replicates iteratively over a number of files determined inside the first copy of the code. The following copies will have the exact same code excepting this number.

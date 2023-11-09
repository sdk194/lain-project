<h1>Lain Project</h1>

<h3>What is it?</h3>
This is a project inspired by my university's system for automaically testing and marking your code for coding problems. I named it Lain because the anime inspired me to finally set up a server using an old laptop.

<h3>Purpose</h3>
The purpose of this is to essentially be able to make your own "katti's problems" or "leet code" on your own server. You create your own task, give it test cases and create your runner to run the submitted file. For now, everything only works locally, i.e. no server is needed, however, I want to eventually make it so that you can run the "lain" command in any computer and it will connect to the server you set it to and send your submitted file in for marking (of course, as long as that computer is allowed access to that server).

<h3>Usage</h3>
<h4>For the problem solver:</h4>
First, get the lain shellscript and put it in your `/bin` directory (If you are solving someone else's problem they created themselves on their server, make sure you get their version of the lain shellscript as they would have made the necessary configurations to allow you to send your file to their server). Ensure the name of the task you are trying to complete is the same as the filename you are doing that task. For example, if you are trying to complete a task named `fizzbuzz.cpp`, make sure your filename is exactly `fizzbuzz.cpp`. Once you feel satisfied with your answer and would like to submit it, you put the following in your commandline:

`lain fizzbuzz.cpp`

<h4>For the task makers:</h4>
You will not be using the `lain` shellscript yourself, however, do configure it so that it matches where you will place all your tasks.

To create a task, create a directory named after the task name. Within that directory, to create test cases you name each test case as `test_` where `_` is replaced with a number. For example, if you want to make 3 test cases you would have 3 directories named `test1`, `test2`, `test3`. Within those directories, have a textfile that contains the test cases you would like to test.

Finally, you create a `runner.sh` that runs the submitted file within that directory. See `fizzbuzz.cpp` for an example of what a runner may look like and just have a general idea of what the structure for a task may look like.

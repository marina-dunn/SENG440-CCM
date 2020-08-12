# SENG440-CCM
Project for SENG 440

Using the Computing Convergence Method to calculate the exponential and natural logarithm functions. 
Using the Taylor Series as an approximation for this purpose.

Commands to run (on UVic system)

- Create C file.
- Open PUTTY -- ssh into ugls.ece.uvic.ca
- Login with netlink credentials. 
- Git pull (or clone) to a location in home directory. 
- Go copy the c file to the tmp directory and go to tmp directory. 

    `cp file.c /tmp`

    `cd /tmp`

- To get the executable file (making sure that the result actual works).

    `arm-linux-gcc -static -o file.exe file.c -lm` *(lm used for math.h library)*

- To get the assembly:

    `arm-linux-gcc -S -o file.s file.c`

Then in order to execute the file, it's a whole process. 

- First, open a PUTTY and ssh into seng440.ece.uvic.ca
- Login using netlink credentials. 
- Go to location of exe file

    `lftp user1@arm` -- password = q6coHjd7P

    `put file.exe`

    `exit`

    `telnet arm`
- Login using user = user1 and password= q6coHjd7P

    `chmod a+x file.exe`

    `./file.exe`
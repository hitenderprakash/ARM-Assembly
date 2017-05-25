/* file writeSystemCall.s 
* write a display message to console and returns 
* length of display msg is not hard coded
*
* assemble as  : arm-none-eabi-as sourceFile.s -o objFile.o
* Link as      : arm-none-eabi-ld objFile.o -o outFile
* execute as   : ./outFile
* See result as: Print to console. Check return value (0) by "echo $?"
*/

.data
display_msg: 
.ascii "\nHello! Hitender Prakash\nNo need to hard code length of message\n"
msgLength = .-display_msg @get length of display_msg in msgLength

.text
.global _start
_start:

@load memory address of display msg in reg
ldr r1, =display_msg 
 
@load length of display_msg in reg 
ldr r2, =msgLength
 
@SYS_WRITE system call:
mov r7, #4   @write system call magic number   
swi     #0   @ Interupt / syscall

@exit system call:
mov r0, #0   @return val
mov r7, #1   @exit system call magic number   
swi     #0   @ Interupt / syscall



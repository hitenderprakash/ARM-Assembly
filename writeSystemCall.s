/* file writeSystemCall.s 
* write a display message to console and returns 
* length of display msg is hard coded
*
* assemble as  : arm-none-eabi-as sourceFile.s -o objFile.o
* Link as      : arm-none-eabi-ld objFile.o -o outFile
* execute as   : ./outFile
* See result as: Print to console. Check return value (0) by "echo $?"
*/

.data
display_msg: 
.ascii "\nHello! Hitender Prakash\n"

.text
.global _start
_start:

@load memory address of display msg in reg
ldr r1, =display_msg 
 
@move length of display_msg in reg 
mov r2, #25
 
@SYS_WRITE system call:
mov r7, #4   @write system call magic number   
swi     #0   @ Interupt / syscall

@exit system call:
mov r0, #0   @return val
mov r7, #1   @exit system call magic number   
swi     #0   @ Interupt / syscall



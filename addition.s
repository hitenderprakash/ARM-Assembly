/* file addition.s 
* Add two numbers
*
* assemble as  : arm-none-eabi-as sourceFile.s -o objFile.o
* Link as      : arm-none-eabi-ld objFile.o -o outFile
* execute as   : ./outFile
* See result as: echo $?
*/


.data

.text
.global _start
_start:

mov r1, #1
mov r2, #2
add r0, r1, r2

@exit:
@ r0 conatins sum as return val
mov r7, #1  @exit system call magic number   
swi     #0  @Interupt / syscall


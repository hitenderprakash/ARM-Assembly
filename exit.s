/* file exit.s 
* Exit system Call
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

mov %r0, #0  @return val
mov %r7, #1  @exit system call magic number   
swi      #0   @ Interupt / syscall


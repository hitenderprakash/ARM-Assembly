/* file addition_mem.s 
* Add two numbers loaded from memory
*
* assemble as  : arm-none-eabi-as sourceFile.s -o objFile.o
* Link as      : arm-none-eabi-ld objFile.o -o outFile
* execute as   : ./outFile
* See result as: echo $?
*/

.data
num1: 
.long 4
num2: 
.long 5

.text
.global _start
_start:

/*load first number from memory*/
ldr r0, =num1 @load memery address
ldr r0, [r0]  @load value at memory 

/*load first number from memory*/
ldr r1, =num2 @load memery address
ldr r1, [r1]  @load value at memory 


add r0,r0,r1

@exit:
@ %r0 conatins sum as return val
mov r7, #1   @exit system call magic number   
swi     #0   @Interupt / syscall

.DATA
A: .WORD 2, 2, 2 // Matrix 1
B: .WORD 2, 2, 2
C: .WORD 2, 2, 2

D: .WORD 2, 2, 2 // Matrix 2
E: .WORD 2, 2, 2
F: .WORD 2, 2, 2

G: .WORD 0, 0, 0
H: .WORD 0, 0, 0  // Final values come in this matrice
I: .WORD 0, 0, 0 // Can be checked by searching memory

.TEXT
ldr r0,=A
ldr r1,=B
ldr r2,=C

ldr r3,=D
ldr r4,=E
ldr r5,=F

ldr r6,=G
ldr r7,=H
ldr r8,=I

mov r9, #0

loop:

ldr r11, [r0], #4
ldr r12, [r3]
mul r10, r11, r12

ldr r11, [r0], #4
ldr r12, [r4]
mul r11, r11, r12
add r10, r10, r11

ldr r11, [r0]
ldr r12, [r5]
mul r11, r11, r12
add r10, r10, r11
str r10, [r6], #4


add r9, r9, #1
cmp r9, #3
BLT loop


mov r11, #0
mov r12, #0
mov r10, #0
mov r9, #0

loop1:

ldr r11, [r1], #4
ldr r12, [r3]
mul r10, r11, r12

ldr r11, [r1], #4
ldr r12, [r4] 
mul r11, r11, r12
add r10, r10, r11

ldr r11, [r1]
ldr r12, [r5]
mul r11, r11, r12
add r10, r10, r11
str r10, [r6], #4


add r9, r9, #1
cmp r9, #3
BLT loop1


mov r9, #0
mov r11, #0
mov r12, #0
mov r10, #0
loop2:

ldr r11, [r2], #4
ldr r12, [r3], #4
mul r10, r11, r12

ldr r11, [r2], #4
ldr r12, [r4], #4
mul r11, r11, r12
add r10, r10, r11

ldr r11, [r2]
ldr r12, [r5], #4
mul r11, r11, r12
add r10, r10, r11
str r10, [r6], #4


add r9, r9, #1
cmp r9, #3
BLT loop2

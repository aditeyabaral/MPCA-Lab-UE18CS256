.data
    A: .WORD 1,2,3,4
    B: .WORD 2,4,6,8
.text
    LDR r0, =A
    LDR r1, =B
    MOV r2, #4
    loop:
        LDR r3, [r0]
        LDR r4, [r1]
        MUL r5, r3, r4
        ADD r6, r6, r5
        SUBS r2, r2, #1
        ADD r0, r0 ,#4
        ADD r1, r1, #4
        BNE loop
.end
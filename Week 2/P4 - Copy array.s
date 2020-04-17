.data

    A: .WORD 10,20,30,40
    B: .WORD 

.text

    LDR r0, =A
    LDR r1, =B
    MOV r2, #4
    loop:
        LDR r3, [r0]
        STR r3, [r1]
        SUB r2, r2, #1
        ADD r0, r0, #4
        ADD r1, r1, #4
        CMP r2, #0
    BNE loop

.end
.data

    A: .WORD 10
    B: .WORD 20
    C: .WORD 0

.text

    LDR r0, =A
    LDR r0, [r0]
    LDR r1, =B
    LDR r1, [r1] 
    ADD r2, r0, r1
    LDR r3, =C
    STR r2, [r3]

.end
.data
    A: .WORD
.text
    LDR r0, =A
    MOV r1, #0
    STR r1, [r0]
    ADD r0, r0, #4
    MOV r2, #1
    STR r2, [r0]
    MOV r4, #3
    loop:
        ADD r3, r1, r2
        ADD r0, r0, #4
        STR r3, [r0]
        MOV r1, r2
        MOV r2, r3
        SUBs r4, r4, #1
        MOV r3, #0
        BNE loop
.end
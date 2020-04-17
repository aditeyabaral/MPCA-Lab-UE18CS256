.data
    A: .BYTE 10,10,10,10,10,10,10,10,10,10
.text
    LDR r0, =A
    MOV r1, #10
    loop:
        LDRB r2, [r0]
        ADD r3, r3, r2
        SUBs r1, r1, #1
        ADD r0, r0, #1
        BNE loop
.end
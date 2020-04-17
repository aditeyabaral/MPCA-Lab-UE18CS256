.text

    MOV r0, #5
    MOV r1, #1
    loop: 
        MUL r1, r0, r1
        SUBS r0, r0, #1
    BNE loop
    SWI 0x011

.end
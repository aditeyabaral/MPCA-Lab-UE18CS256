.text

    MOV r0, #10
    CMP r0, #0
    BEQ zero
    BMI negative
    MOV r1, #2
    SWI 0x011
    zero:
        MOV r1, #1
        SWI 0x011
    negative:
        MOV r1, #3
        SWI 0x011

.end
.data
    STR: .ASCIZ "Hello World!"
.text
    LDR R0, =STR
    loop:
        LDRB R2, [R0]
        CMP R2, #0
        BEQ empty
        ADD R1, R1, #1
        ADD R0, R0, #1
        B loop
    empty:
        SWI 0X011

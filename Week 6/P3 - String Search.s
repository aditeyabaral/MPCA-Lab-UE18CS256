.data
    STR: .ASCIZ "Hello World!"
    LETTER: .ASCIZ "o"
.text
    LDR R0, =STR
    LDR R1, =LETTER
    LDRB R1, [R1]
    MOV R2, #-1
    MOV R3, #-1
    loop:
        LDRB R4, [R0]
        CMP R4, #0
        BEQ end
        ADD R3, R3, #1
        CMP R4, R1
        BEQ found
        ADD R0, R0, #1
        B loop
    found:
        MOV R2, R3
    end:
        SWI 0x011

.data
    A: .ASCIZ "Even Parity"
    B: .ASCIZ "Odd Parity"
.text
    MOV R0, #13
    MOV R1, #1
    MOV R3, #2
    loop:
        EOR R0, R0, R0, LSR R1
        MUL R4, R1, R3
        MOV R1, R4
        CMP R1, #32
        BEQ exit
        B loop
    exit:
        AND R0,R0,#1
        CMP R0, #1
        BEQ oddparity
        LDR R0,=A
        SWI 0x02
        SWI 0x011
    oddparity:
        LDR R0,=B
        SWI 0x02

.data
    STR: .ASCIZ "Hello World!"
    COUNT: .WORD 1500

.text
    MOV R0,#30
    MOV R1,#7
    MOV R7,#0
    LDR R8,=COUNT
    LDR R8,[R8]
    LDR R2,=STR
    loop:
        SWI 0x204
        BL delay
        CMP R0,#0
        SUBNE R0,R0,#1
        SWIEQ 0x011
        B loop
    delay:
        CMP R7,R8
        ADDNE R7,R7,#1
        BNE delay
        SWI 0x206
        MOV R7,#0
        MOV PC,LR

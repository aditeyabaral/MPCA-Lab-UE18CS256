.data
    zero: .byte 0b11101101
    one: .byte 0b01100000
    two: .byte 0b11001110
    three: .byte 0b11101010
    four: .byte 0b01100011
    five: .byte 0b10101011
    six: .byte 0b10101111
    seven: .byte 0b11100000
    eight: .byte 0b11101111
    nine: .byte 0b11101011
    A: .byte 0b11100111
    B: .byte  0b11101111
    C: .byte 0b10001101
    D: .byte 0b11101101
    E: .byte 0b10001111
    F: .byte 0b10000111

.text

    MOV R0,#0

    always:
        SWI 0x202
        CMP R0,#1
        BEQ forward
        CMP R0,#2
        BEQ backward
        B always
    
    forward:
        MOV R3,#16
        MOV R2,#1
        LDR R1,=zero
        loop1:
            LDRB R0,[R1]
            SWI 0x200
            BL delay
            ADD R1,R1,R2
            SUB R3,R3,#1
            CMP R3,#0
            BNE loop1
        B always

    backward:
        MOV R3,#16
        MOV R2,#-1
        LDR R1,=F
        loop2:
            LDRB R0,[R1]
            SWI 0x200
            BL delay
            ADD R1,R1,R2
            SUB R3,R3,#1
            CMP R3,#0
            BNE loop2
        B always

    delay: 
        MOV R4,#8000
        delaycount:
        SUB R4,R4,#1
        CMP r4,#0
        BGE delaycount
        MOV PC,LR
   
        

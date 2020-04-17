.text
    MOV R0, #0
    loop:
        SWI 0x201
        ADD R0,R0,#1
        MOV R4, #8000
        delay:
            SUB R4,R4,#1
            CMP R4,#0
            BNE delay
        CMP R0,#4
        MOVEQ R0,#0 
        BLE loop


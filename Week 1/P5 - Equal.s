.text
        
        ;Loading numbers
        
        MOV r0, #20
        MOV r1, #20
        
        ;Setting Zero Flag
        
        SUBs r2, r0, r1
        
        ;condition entered if Z=1 -> equal
        
        BEQ condition
                SUB r3, r0, r1
                B exit
        condition:
                ADD r3, r0, r1
        exit:
                SWI 0x011
.end

.text
        ;AND
        
        MOV r0, #1
        MOV r1, #1
        AND r2, r0, r1
        
        ;OR
        
        MOV r0, #1
        MOV r1, #0
        ORR r3, r0, r1
        
        ;NOT
        
        MOV r0, #1
        MOV r1, #1
        MVN r4, r1
        
        ;XOR
        
        MOV r0, #1
        MOV r1, #0
        EOR r5, r0, r1
        
.end

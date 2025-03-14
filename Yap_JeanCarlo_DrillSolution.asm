ORG 100H  

.DATA
    array DW 25, 40, 15, 60, 10, 0  
    largest DW ?                    

.CODE
    MOV SI, 0       
    MOV AX, array   
    MOV largest, AX 

    MOV CX, 5       

COMPARE_LOOP:
    ADD SI, 2       
    MOV BX, array[SI] 

    CMP BX, largest 
    JLE SKIP_UPDATE 

    MOV largest, BX 

SKIP_UPDATE:
    LOOP COMPARE_LOOP  

    
    MOV AH, 4CH
    INT 21H





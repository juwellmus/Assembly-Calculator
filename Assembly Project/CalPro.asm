include emu8086.inc                  ;Library


;=====================================Set all register at zero============================
        MOV AX,0
        MOV BX,0
        MOV CX,0
        MOV DX,0
   
   
   ;=======================================DECLEAR VARIABLE===============================
        NUM1 DW ?
        NUM2 DW ?
        FACT DW ? 
        
        
   ;===========================================TITLE======================================     
    TITLE:   
        GOTOXY 6,3                    
        PRINT '                       _                _                          '
        GOTOXY 6,4
        PRINT '   --------\          | |              | |                         '
        GOTOXY 6,5                                                _               
        PRINT '  | /-----\ \         | |              | |        | |               '
        GOTOXY 6,6 
        PRINT '  | |     |_|         | |              | |        | |               '
        GOTOXY 6,7                                             =======
        PRINT '  | |                 | |              | |      =======             '
        GOTOXY 6,8                                               
        PRINT '  | |                 | |              | |        | |               '
        GOTOXY 6,9
        PRINT '  | |                 | |              | |        | |               '
        GOTOXY 6,10
        PRINT '  | |           __,_  | |  ____        | |  __,_  | |  ____     _   '
        GOTOXY 6,11                                                  
        PRINT '  | |      | | / _  | | | / --- ||  || | | / _  | | | /  _ \ ||/ \  '
        GOTOXY 6,12
        PRINT '  | \______| |  (_| | | | ||    ||__|| | | |(_| | | | | (_)| ||     '
        GOTOXY 6,13  
        PRINT '   \_________/ \__,_| |_| \\___ |____| |_| \__,_| |_| \____/ ||     ' 
        
        
        GOTOXY 6,18
        PRINT 'PRESS ANY KEY TO CONTINUE'    
        MOV AH,0h                            
        INT 16h
       
       
  ;=======================================Code============================================
  
  START:
        CALL CLEAR_SCREEN
        
        
        GOTOXY 15,2
        PRINT '0.ADDITION'
        GOTOXY 15,3
        PRINT '1.SUBTRACTION'
        GOTOXY 15,4
        PRINT '2.MULTIPLICATION'
        GOTOXY 15,5
        PRINT '3.DIVISION' 
        GOTOXY 15,6
        PRINT '4.LOGICAL AND'
        GOTOXY 15,7
        PRINT '5.LOGICAL OR'
        GOTOXY 15,8
        PRINT '6.LOGICAL XOR'
        GOTOXY 15,9
        PRINT '7.SQUARE'
        GOTOXY 15,10
        PRINT '8.SCIENTIFIC CONSTANT'
        GOTOXY 15,11
        PRINT '9.FACTORIAL'
        
        
    
    
            
        
   
        
        
   CHOISE:
        GOTOXY 2,13
        PRINT 'GIVE YOUR CHOICE : '
        CALL SCAN_NUM 
         
        ;GOTOXY 10,19
        CMP CX,0H
        JE ADDITION
        
        CMP CX,1H
        JE SUBTRACTION
        
        CMP CX,2H
        JE MULTI
        
        CMP CX,3H
        JE DIVISION
        
        CMP CX,4H
        JE LOGICAL_AND
        
        CMP CX,5H
        JE LOGICAL_OR
        
        CMP CX,6H
        JE LOGICAL_XOR
        
        CMP CX,7H
        JE SQUARE
        
        CMP CX,8H
        JE CONSTANT
        
        CMP CX,9H
        JE FACTORIAL         
                 
        JMP FALSE  
        
        
     FALSE:                                              
               GOTOXY 3,24 
               PRINTN 'WRONG KEY !!! CHOISE AGAIN'
                   
               JMP CHOISE   
        
        
        
   ;========================================ADDITION======================================          
        ADDITION: 
    
    
    ;===============================SCAN FIRST NUMBER======================================     
        GOTOXY 2,15
        PRINT 'ENTER FIRST NUMMBER : '
        CALL SCAN_NUM
        PUSH CX
        
        
   ;===============================SCAN SECOND NUMBER=====================================
        GOTOXY 2,16
        PRINT 'ENTER SECOND NUMBER : '
        CALL SCAN_NUM
        MOV NUM2,CX
                
                GOTOXY 10,19
                PRINT 'SUM IS '
         
                POP AX
                ADD AX,NUM2
                
                CALL PRINT_NUM 
                
                JMP REPEAT
    
    ;======================================SUBTRACTION=====================================                 
        SUBTRACTION:  
    
    
    ;===============================SCAN FIRST NUMBER======================================     
        GOTOXY 2,15
        PRINT 'ENTER FIRST NUMMBER : '
        CALL SCAN_NUM
        PUSH CX
        
        
   ;===============================SCAN SECOND NUMBER=====================================
        GOTOXY 2,16
        PRINT 'ENTER SECOND NUMBER : '
        CALL SCAN_NUM
        MOV NUM2,CX
        
           
                 
                 GOTOXY 10,19
                 PRINT 'SUBTRACTION IS '
                 POP AX
                 SUB AX,NUM2
                 
                 CALL PRINT_NUM
        
                 JMP REPEAT
        
    ;======================================MULTIPLICATION==================================  
        MULTI:
    
    ;===============================SCAN FIRST NUMBER======================================     
        GOTOXY 2,15
        PRINT 'ENTER FIRST NUMMBER : '
        CALL SCAN_NUM
        PUSH CX
        
        
   ;===============================SCAN SECOND NUMBER=====================================
        GOTOXY 2,16
        PRINT 'ENTER SECOND NUMBER : '
        CALL SCAN_NUM
        MOV NUM2,CX       
                  
              GOTOXY 10,19
              PRINT 'MULTIPLICATION IS '
              
              
              POP AX
              MUL NUM2
              
              CALL PRINT_NUM 
              
              JMP REPEAT
                                                                                           
                                                                                           
    ;======================================DIVISION========================================          
        DIVISION: 
    
    ;===============================SCAN FIRST NUMBER======================================     
        GOTOXY 2,15
        PRINT 'ENTER FIRST NUMMBER : '
        CALL SCAN_NUM
        PUSH CX
        
        
   ;===============================SCAN SECOND NUMBER=====================================
        GOTOXY 2,16
        PRINT 'ENTER SECOND NUMBER : '
        CALL SCAN_NUM
        MOV NUM2,CX
        
        
              GOTOXY 10,19
              PRINT 'Result is '
              
              POP AX
              DIV NUM2
              
              CALL PRINT_NUM
              
              JMP REPEAT
               
     ;======================================AND=============================================         
              
        LOGICAL_AND:                                                                                               
    
    ;===============================SCAN FIRST NUMBER======================================     
        GOTOXY 2,15
        PRINT 'ENTER FIRST NUMMBER : '
        CALL SCAN_NUM
        PUSH CX
        
        
   ;===============================SCAN SECOND NUMBER=====================================
        GOTOXY 2,16
        PRINT 'ENTER SECOND NUMBER : '
        CALL SCAN_NUM
        MOV NUM2,CX
           
              GOTOXY 10,19
              PRINT 'Result is '
              
              POP AX
              AND AX,NUM2
              
              CALL PRINT_NUM
              
              JMP REPEAT                                                                     
              
     ;========================================OR=============================================         
              
        LOGICAL_OR:
   
    
    ;===============================SCAN FIRST NUMBER======================================     
        GOTOXY 2,15
        PRINT 'ENTER FIRST NUMMBER : '
        CALL SCAN_NUM
        PUSH CX
        
        
   ;===============================SCAN SECOND NUMBER=====================================
        GOTOXY 2,16
        PRINT 'ENTER SECOND NUMBER : '
        CALL SCAN_NUM
        MOV NUM2,CX
                          
              GOTOXY 10,19            
              PRINT 'Result is '
              
              POP AX
              OR AX,NUM2
              
              CALL PRINT_NUM
              
              JMP REPEAT
              
      ;========================================XOR============================================        
        LOGICAL_XOR:
   
    
    ;===============================SCAN FIRST NUMBER======================================     
        GOTOXY 2,15
        PRINT 'ENTER FIRST NUMMBER : '
        CALL SCAN_NUM
        PUSH CX
        
        
   ;===============================SCAN SECOND NUMBER=====================================
        GOTOXY 2,16
        PRINT 'ENTER SECOND NUMBER : '
        CALL SCAN_NUM
        MOV NUM2,CX 
             
             GOTOXY 10,19
             PRINT 'Result is '
             
             POP AX
             XOR AX,NUM2
             
             CALL PRINT_NUM
             
             JMP REPEAT      
              
              
              
              
              
    ;======================================FACTORIAL=======================================
        FACTORIAL: 
        
     ;===============================SCAN FIRST NUMBER======================================     
        GOTOXY 2,15
        PRINT 'ENTER A NUMMBER : '
        CALL SCAN_NUM
        PUSH CX   
        
        
                GOTOXY 10,19
                PRINT 'FACTORIAL OF THE NUMBER IS '
                
                POP AX
                MOV FACT,AX
                MOV CX,AX
                SUB CX,1H
                
              FA:
                 DEC FACT
                 MUL FACT
                 
                 LOOP FA
                 
                 
               CALL PRINT_NUM 
               
               JMP REPEAT   
              
              
     ;======================================SQUARE=========================================
        SQUARE:
        
          ;===============================SCAN FIRST NUMBER======================================     
        GOTOXY 2,15
        PRINT 'ENTER A NUMMBER : '
        CALL SCAN_NUM
        PUSH CX
        
             GOTOXY 10,19
             PRINT 'SQUARE OF THE NUMBER IS '
             
             POP AX
             MOV BX,AX
             MUL BX
             
             CALL PRINT_NUM
                              
             JMP REPEAT
             
             
             
     ;====================================CONSTANT========================================= 
        CONSTANT: 
                CALL CLEAR_SCREEN
                
                GOTOXY 15,2
                PRINT '1. e '
                GOTOXY 15,3
                PRINT '2. Pie'
                GOTOXY 15,4
                PRINT '3. F '
                GOTOXY 15,5
                PRINT '4. g '
                GOTOXY 15,6
                PRINT '5. G '
                GOTOXY 15,7
                PRINT '6. atm '
                
                GOTOXY 10,10
                PRINT 'GIVE CHOISE : '
                CALL SCAN_NUM
                
                GOTOXY 15,12
                CMP CX,1H
                JE E
                
                CMP CX,2H
                JE PIE
                
                CMP CX,3H
                JE F
                
                CMP CX,4H
                JE G     
                
                CMP CX,5H
                JE GG
                
                CMP CX,6H
                JE ATM
                
                
                E: 
                   PRINT ' e = 2.7183 '
                   
                   JMP REPEAT
                
                
                PIE:
                   PRINT ' pie = 3.1416 '
                   
                   JMP REPEAT
                
                F: 
                  PRINT ' F = 96485.3399 '
                   
                   JMP REPEAT
                
                
                G:
                  PRINT ' g = 9.80665 '
                   
                   JMP REPEAT
                
                GG: 
                   PRINT ' G = 6.67428*10^-11 '
                   
                   JMP REPEAT
                
                ATM: 
                    PRINT ' atm = 101325 '
                   
                   JMP REPEAT
                
         
                JMP REPEAT
     ;=====================================REPEAT==========================================   
        REPEAT: 
              GOTOXY 3,28
              PRINT 'WOULD YOU LIKE TO RUN THIS PROGRAM AGAIN ?     1.YES       2.NO'
              GOTOXY 3,30              
              PRINT 'GIVE CHOISE : '
              CALL SCAN_NUM      
              GOTOXY 3,32
              PRINT ' '
              
              CMP CX,1H
              
              JE START
              JNE EXIT
              
    
    
                     
        
        
    ;=======================================EXIT===========================================    
        EXIT: 
             CALL CLEAR_SCREEN
             GOTOXY 15,2
             PRINT '-_-_-_-_-_ CREDIT -_-_-_-_-_-_'
             GOTOXY 15,5
             PRINT 'MAHBUB MORSHED CHOWDHURY'
             GOTOXY 15,7
             PRINT 'A.F.M TARIKUL HAQUE'
             GOTOXY 15,9
             PRINT 'ABU MOHAMMAD MUSA'
             GOTOXY 15,11
             PRINT 'RAHAT READOY'
             
        
        
        
        
  DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_PTHIS
DEFINE_CLEAR_SCREEN
DEFINE_GET_STRING
  
  
  END            



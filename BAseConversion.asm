.model small
.stack 100h
.data
   
   msg1 DB 'Enter uppercase character (A-J) : $' 
   msg2 DB 'Decimal value of that character : $'
  
.code
main proc
    
    mov AX,@DATA
    mov DS,AX
    
    ;print msg1
    lea DX,msg1
    mov ah,09h
    int 21h
    
    ;take a user input
    mov ah,1
    int 21h
    mov BL,AL   
    
    ;print new line
    mov ah,2
    mov DL,0AH
    int 21h
    mov DL,0DH
    int 21h
    
    ;print msg 2
    lea DX,msg2
    mov ah,09h
    int 21h
    
    ;print decimal value
    mov ah,2
    mov DL,31h ;print 1 at doshok
    int 21h
    
    SUB BL,17
    mov DL,BL
    int 21h
    
    mov ah,4ch
    int 21h
    end main
main endp
      